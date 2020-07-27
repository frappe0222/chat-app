class MessagesController < ApplicationController
  def index
    @message = Message.new
    @room = Room.find(params[:room_id])
<<<<<<< HEAD
<<<<<<< HEAD
=======
    @messages = @room.messages.includes(:user)
>>>>>>> 29b34bbd07255a58ae195cf0e2bfd2fa51327a48
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_messages_path(@room)
    else
      render :index
    end
  end

<<<<<<< HEAD
  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
=======
    @messages = @room.messages.includes(:user)
>>>>>>> 29b34bbd07255a58ae195cf0e2bfd2fa51327a48
  end

  def create
    @room = Room.find(params[:room_id])
    @message = @room.messages.new(message_params)
    if @message.save
      redirect_to room_messages_path(@room)
    else
      render :index
    end
  end

=======
>>>>>>> 29b34bbd07255a58ae195cf0e2bfd2fa51327a48

  private

  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id)
  end
end