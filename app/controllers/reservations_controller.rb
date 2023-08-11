class ReservationsController < ApplicationController
  before_action :authenticate_user!
  def index
    @reservations = current_user.reservations
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(reservation_param)
    @reservation.user_id = current_user.id
    @room = Room.find(params[:reservation][:room_id])
    @reservation.room = @room
    binding.pry
    if @reservation.save!
      redirect_to :reservations
    else
      render "new"
    end
  end

  def edit
    @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation = Reservation.find(params[:id])
    if @reservation.update(reservation_param)
      redirect_to :rooms
    else
      render "edit"
    end
  end

  def show
  end

  def confirm
    @room = Room.find(params[:room_id])
    @reservation = Reservation.new(reservation_param)
  end

  def reservation_param
    params.require(:reservation).permit(:check_in, :check_out, :people)
  end

  def destroy
  end

end
