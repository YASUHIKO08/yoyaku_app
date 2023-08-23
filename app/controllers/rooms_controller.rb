class RoomsController < ApplicationController
  before_action :search

  def search
    @q = Room.ransack(params[:q])
  end

  def index
    @rooms = @q.result(destinct:true)
  end

  def own
    @rooms = current_user.rooms
  end

  def new
    @room = Room.new
  end


  def create
    @room = Room.new(room_params)
    @room.user_id = current_user.id
    if @room.save
      redirect_to :rooms
    else
      render "new"
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def show
    @room = Room.find(params[:id])
    @reservation = Reservation.new
  end

  def update
    @room = Room.find(params[:id])
    if @room.update(room_params)
      redirect_to :rooms
    else
      render "edit"
    end
  end

  def destroy
  end

  def room_params
    params.require(:room).permit(:img_data,:inn,:introduction,:charge,:address)
  end
end
