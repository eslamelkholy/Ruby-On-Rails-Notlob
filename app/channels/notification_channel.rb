class NotificationChannel < ApplicationCable::Channel
  def subscribed
    stream_for current_user
    
    print "\n\nUSSSSSSSSSSSSSSSSSSSSSSSSSSER IDDDDDDDDDDDD = "
    print params[:id]
    print "\n\nUSSSSSSSSSSSSSSSSSSSSSSSSSSER IDDDDDDDDDDDD = "
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
