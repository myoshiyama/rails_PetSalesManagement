class ApplicationController < ActionController::Base
    before_action :authenticate_user!

    def authenticate_admin!
        redirect_to root_path, alert: '権限がありません' unless current_user.admin?
    end
end
