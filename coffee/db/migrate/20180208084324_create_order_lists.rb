class CreateOrderLists < ActiveRecord::Migration[5.1]
  def change
    create_table :order_lists do |t|
      t.belongs_to :user
      t.belongs_to :product
      t.belongs_to :order
      t.timestamps
    end
  end
end
