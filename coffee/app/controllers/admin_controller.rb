class AdminController < ApplicationController

  def index
  end

  def create
    Ingredient.create(
      name: params[:name],
      category: params[:category],
      price: params[:price],
      comment: params[:comment],
    )
    redirect_to '/admin/new'
  end
end
