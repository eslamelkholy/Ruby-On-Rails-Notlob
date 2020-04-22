class ApplicationController < ActionController::Base
    before_action :authenticate_user!, :user_notification

    private
    def user_notification
        if current_user
            @my_notifications = OrderFriend.where(user_id: current_user.id)
        end
    end
end
