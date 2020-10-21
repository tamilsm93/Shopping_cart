class CategoriesController < ApplicationController

  before_action :set_category, only: [:edit, :show, :category_items, :update, :destroy]


  def index
    @categories = Category.all.order(created_at: :desc)
  end


  def new
    @category = Category.new
  end

  def create
    @category = Category.create(category_params)

    redirect_to categories_path
   
  end

  def edit
  end

  def show
  end

  def category_items

    @category_items = @category.items
  end

  def update
    @category.update(category_params)
    redirect_to categories_path
  end

  def destroy
    @category.destroy

    redirect_to categories_path
  end

  private

   def category_params
    params.require(:category).permit(:name, :description, :image)
   end

   def set_category
     @category = Category.find_by(id: params[:id])
   end
end
