class UsersController < ApplicationController

  def follow_topic
    @user_topic = current_user.user_topic.new(topic_id: params[:topic_id])
    if @user_topic.save
      flash[:success] = "Topic Followed"
      redirect_to root_path
    else
      flash[:alert] = @user_topic.errors.full_messages.join('<br>')
      redirect_to root_path
    end
  end

  def follow_user
    @relationship = current_user.following.new(following_id: params[:following_id])
    if @relationship.save
      flash[:success] = "User Followed"
      redirect_to root_path
    else
      flash[:alert] = @relationship.errors.full_messages.join('<br>')
      redirect_to root_path
    end
  end
end