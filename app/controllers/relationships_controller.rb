class RelationshipsController < ApplicationController
  def create
    ActiveRecord::Base.transaction do
      other_user = User.find(params[:user_id])
      @relation = Relationship.new(follower_id: current_user.id, followed_id: other_user.id)

      @relation.save
      redirect_to user_path(other_user)

      @notification = Notification.new
      send_notification(@notification, @relation.followed_id, "create")
    end
  end

  def destroy
    ActiveRecord::Base.transaction do
      @relation = Relationship.find(params[:id])
      
      @notification = Notification.new
      send_notification(@notification, @relation.followed_id, "destroy")

      @relation.destroy

      redirect_to user_path(@relation.followed_id)
    end
  end

  private

  def send_notification(notification, user_id, environment)
    notification.user_id = user_id
    notification.message = "#{current_user.username} started following you."
    notification.is_active = true
    notification.message = "#{current_user.username} stopped following you." if environment.eql?('destroy')
    notification.save
  end
end
