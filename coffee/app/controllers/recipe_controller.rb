class RecipeController < ApplicationController


  def index
    @coffees=Ingredient.where(category: "coffee")
    @waters=Ingredient.where(category: "water")
    @milks=Ingredient.where(category: "milk")
    @bubbles=Ingredient.where(category: "bubble")
    @syrups=Ingredient.where(category: "syrup")
    @decos=Ingredient.where(category: "deco")

  end

  def create
    Product.create(
      name: params[:name],
      comment: params[:comment],
      price: "1000",
      user_id: 1,
      confirm: "false"

    )

    redirect_to '/orders'
  end

end
