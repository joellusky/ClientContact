class DashboardController < ApplicationController
  def index
  	 @clients = Client.all
     @user = User.new
  end
end
