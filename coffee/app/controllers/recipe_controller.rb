class RecipeController < ApplicationController


  def index
    # 여기 아래는 지우셔도 됩니다.
    # @coffees=Ingredient.where(category: "coffee")
    # @waters=Ingredient.where(category: "water")
    # @milks=Ingredient.where(category: "milk")
    # @bubbles=Ingredient.where(category: "bubble")
    # @syrups=Ingredient.where(category: "syrup")
    # @decos=Ingredient.where(category: "deco")
    
    @ingredients = Ingredient.all
    @categories = Ingredient.select(:category).distinct.order(:category)
  end

  def create

    # {
    #   "pct_name"=>"테스트 이름입니다.",
    #   "pct_comment"=>"테스트 코멘트입니다.",
    #   "pct_price"=>"50800",
    #   "checked"=>"{\"3\":\"100\",\"4\":\"140\"}",
    # }

    # 값은 위와 같이 넘어옵니다.
    # checked = {ingredient_id => quantity}입니다.

    # JSON()을 거치면 checked가 아래와 같이 변하니 이 코드를 꼭 넣고 그 뒤에 hash로 코딩하시면 됩니다!!
    # "{\"3\":\"100\",\"4\":\"140\"}" => {"3"=>"100", "4"=>"140"}
    checked = JSON(params[:checked])
    
    # To Do List
    # 1. product를 만든다.
    # 2. recipe를 만든다.
    #   2-1. product_id는 방금 만든 product.id
    #   2-2. ingredient_id와 quantity는 checked를 사용하시면 됩니다.
    #   2-3. price = ingredient의 price * quantity입니다. 혹시 이부분 모르시면 물어보세요!



    # 아래 코드는 원래있던 product만드는 코드입니다. 주석처리 해놨습니다. 풀고 사용하시면 되요!

    # Product.create(
    #   name: params[:name],
    #   comment: params[:comment],
    #   price: "1000",
    #   user_id: 1,
    #   confirm: "false"
    # )

    redirect_to '/orders'
  end

end
