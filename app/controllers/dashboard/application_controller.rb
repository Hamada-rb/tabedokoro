class Dashboard::ApplicationController < ActionController::Base
    before_action :authenticate_admin!
    layout 'dashboard'
end
