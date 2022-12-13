class MeetingsController < ApplicationController
  # before_action :set_friend, only: [ :new, :create ]

  def new
    @meeting = Meeting.new
    @friend = User.find(params[:friend_id])
  end

  def create
    @meeting = Meeting.new(meeting_params)
    @meeting.user = current_user
    @friend = User.find(params[:friend_id])
    @meeting.friend = @friend
    if @meeting.save
      redirect_to user_meetings_path(current_user), notice: "Your meeting was successfully created."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def user_meetings
    @user_meetings = current_user.meetings
  end

  private

  def set_friend
    @friend = User.find(params[:friend_id])
  end

  def meeting_params
    params.require(:meeting).permit(:title, :description, :date)
  end
end
