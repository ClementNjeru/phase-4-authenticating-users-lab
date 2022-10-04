class SessionsController < ApplicationController
    #  POST /login
#     returns the logged in user (FAILED - 1)
#     sets the user ID in the session (FAILED - 2)
        def create
            user = User.find_by(username: params[:username])
            session[:user_id] = user.id
            render json: user
        end

#   DELETE /logout
#     returns no content (FAILED - 3)
#     deletes the user ID from the session (FAILED - 4
        def destroy
            session.delete :user_id
            head :no_content
        end

        
end
