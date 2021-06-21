class UsersController < ApplicationController

    private
    def user_params
        params.required(:user).permit(:first_name, :last_name, :email, :password)
    end
end
