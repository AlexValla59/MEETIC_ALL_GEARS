class BookingsController < ApplicationController
  def index
    @bookings = current_user.bookings
  end

  def create
    @item = Item.find(params[:item_id])
    dates = booking_params[:start_at].split(" to ")
    @booking = Booking.new(start_at: dates.first, end_at: dates.last, status: "En attente")
    @booking.item = @item
    @booking.user = current_user
    if @booking.save
      redirect_to bookings_path()
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def update
    @booking = Booking.find(params[:id])
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_at, :item_id, :user_id)
  end
end
