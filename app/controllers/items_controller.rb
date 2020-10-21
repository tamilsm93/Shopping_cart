class ItemsController < ApplicationController

    before_action :set_item, only: [:show, :edit]
    before_action :set_slug, only: [:update, :destroy]
    before_action :set_list, only: [:new, :edit]

    def index
        @items = Item.all.order(created_at: :desc)
        @categories = Category.all
    end

    def new
        @item = Item.new
    end

    def create
        @category = Category.find(params["item"]["category_id"])
        @item = @category.items.create(item_params)
        redirect_to items_path
    end

    def show
        @item = Item.find_by(id: params[:id])
    end

    def edit

    end

    def update
        @item.update(item_params)
        redirect_to items_path
    end

    def destroy
        @item.destroy
        redirect_to items_path
    end

    private

    def item_params
      params.require(:item).permit(:name, :description, :price, :image, :brand, :slug, :category_id)
    end

    def set_item
        @item = Item.find_by(id: params[:id])
    end

    def set_slug
        @item = Item.friendly.find_by(slug: params[:id])
    end

    def set_list
        @categories = Category.category_list
    end


end
