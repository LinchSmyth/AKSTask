class RoomsController < ApplicationController
  def show
    @chat_room = Room.includes(:messages).find_by(id: params[:id])
  end
  #TODO: remove functional from above (don't forget about view silly!)
  def index
    @chat_rooms = Room.all
  end

  def new
    @chat_room = Room.new
  end

  def create
    @chat_room = current_user.chat_rooms.build(room_params)
    if @chat_room.save
      flash[:success] = 'Chat room added!'
      redirect_to rooms_path
    else
      render 'new'
    end
  end

  private

  def room_params
    params.require(:room).permit(:title)
  end
end

