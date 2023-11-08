class CategoriesController < ApplicationController
  
  def index
    @categories = Category.order(id: :desc)
  end

  def show
    @category ||= Category.find(params[:id])
  end
end
