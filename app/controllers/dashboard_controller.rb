class DashboardController < ApplicationController
  before_filter :authenticate_user!
  
  def index
  	 @clients = Client.all
     @user = User.new
  end
end
