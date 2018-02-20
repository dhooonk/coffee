class OrdersController < ApplicationController
    def index
        @products = Product.where(user_id: 1)
    end

    def create
        # order 생성
        order = Order.create(price: params[:val_hidden], user_id: 1)

        params[:checked_pct].split(",").each do |product_id| 
            # orderList 생성
            OrderList.create(user_id: 1, product_id: product_id, order_id: order.id)

            # product 변경
            product = Product.find_by(product_id)
            product.update(confirm: 'true')
        end
    end
end
