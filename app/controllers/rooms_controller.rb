class RoomsController < ApplicationController
  def show
    @chat_room = Room.includes(:messages).find_by(id: params[:id])
    @message = Message.new
  end

  def index
    @chat_rooms = Room.all
  end

  def new
    @chat_room = Room.new
  end

  def create
    @chat_room = current_user.rooms.build(room_params)
    if @chat_room.save
      redirect_to @chat_room, notice: 'Room was successfully created!'
    else
      render 'new'
    end
  end

  private

  def room_params
    params.require(:room).permit(:title)
  end
end

