class HomeController < ApplicationController
  def index
  	@challenges = Challenge.all
  	@search= Challenge.ransack(params[:q])   
  	 @search_challenges=@search.result(:distinct => true).paginate(:page => params[:page], :per_page => 40) if params[:q]
    
  end
end
