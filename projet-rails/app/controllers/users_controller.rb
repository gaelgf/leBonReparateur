class UsersController < ApplicationController
  def index
    @users = User.all
    if params[:users]
   		@search_value = search_params[:search]
   		@users = @users.search(@search_value)
   	end
    
  end
  def show
    @user = User.find(params[:id])
  end

  def search_params
	params.require(:users).permit(:search)
  end
end
