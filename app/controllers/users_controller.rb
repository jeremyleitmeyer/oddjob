class UsersController < ApplicationController
	
	def show
		@user = User.find_by_id(params[:id])
	end

	def edit
		@user = User.find_by_id(params[:id])
	end

	def update
		@user = User.find_by_id(params[:id])
		@user.update(user_params)
	end

	private

	def user_params
	    params.require(:user).permit(:fname, :lname, :description, :email, :avatar, :id)
	end
end
