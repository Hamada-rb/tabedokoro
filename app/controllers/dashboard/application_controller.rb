class Dashboard::ApplicationController < ActionController::Base
    before_action :auth_admin!
    layout 'dashboard'

    private

    def auth_admin!
        redirect_to :root if !admin_signed_in?
    end
end
