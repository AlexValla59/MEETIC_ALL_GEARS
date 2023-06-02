class ItemsController < ApplicationController
  def index
    @items = Item.all
    # @items = Item.includes(:user)  # ici
  end

  def new
    @item = Item.new
  end

  def create

    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save!

      redirect_to items_path
    else
      render :new, status: :unprocessable_entity

    end
  end

  def show
    @booking = Booking.new
    @item = Item.find(params[:id])

    if @item.user_id == current_user
      @item.user_id = true
    end
    if @item.geocoded?
      @markers = [{ lat: @item.latitude, lng: @item.longitude }]
    end

  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    redirect_to items_path, status: :see_other
  end

  def edit
    @item = Item.find(params[:id])
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to item_path(@item)
  end

  def my_items
    @items = current_user.items

  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :price, :poster_url, :univers)
  end
end
