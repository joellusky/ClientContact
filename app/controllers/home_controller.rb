class HomeController < ApplicationController
  def index

    if user_signed_in?
      redirect_to dashboard_index_path
    else
      # render "index"
    end
  	render :index, layout: "landing_page"
  end
end

