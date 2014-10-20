class HomeController < ApplicationController
  def index
  	render :index, layout: "landing_page"
  end
end
