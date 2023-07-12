class MainController < ApplicationController
    def index
        flash[:notice] = "You opened page succesfully"
        flash[:alert] = "Your page opening failed!"
    end
end