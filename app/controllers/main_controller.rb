class MainController < ApplicationController
    def index
        if session[:user_id]
            @user = User.find_by(id: session[:user_id])
        end
        # flash.now[:notice] = "You opened page succesfully"
        # flash.now[:alert] = "Your page opening failed!"
    end
end