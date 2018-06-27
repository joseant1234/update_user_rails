class UsersController < ApplicationController
  
  def index
    @users = User.order_by_id
  end

  def status
  	if params[:status] == 'active' && params[:users]
  		User.active_all(params[:users])
  	elsif params[:status] == 'desactive' && params[:users]
		  User.desactive_all(params[:users])
  	end

    redirect_to users_path
  end
end