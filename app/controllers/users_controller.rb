class UsersController < ApplicationController
    # GET /me
    # returns the first user when the first user is logged in
    # returns the second user when the second user is logged in
    def show
    user = User.find_by(id: session[:user_id])
    render json: user
    end
end
