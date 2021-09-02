class ApplicationController < ActionController::API
 
    def current_user
      User.first
      #mock version
    end
    def logged_in?
      !!current_user
    end

end
