class BookingsController < ApplicationController

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking
    else
      render :new
    end
  end

  def index
    @bookings = Booking.all
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
    params.require(:booking).permit(:date, :item_id, :user_id)
  end
end

    # def owner_index
    #   @bookings = current_user.bookings
    # end
