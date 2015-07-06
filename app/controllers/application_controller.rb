class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :all_subdomains
  helper_method :all_challenges
  helper_method :all_admin_users

  helper_method :test
  

  before_filter :site_search

def index
    @challenges = Challenge.all
    @search= Challenge.ransack(params[:q])   
     @search_challenges=@search.result(:distinct => true).paginate(:page => params[:page], :per_page => 40) if params[:q]
    
  end
  
  def test
  @name = params[:name]

  end
  

  def all_subdomains
  	@subdomains = Subdomain.all

  end

  def all_admin_users
    
    @users = AdminUser.all
  end

  def all_challenges
  	@challenges = Challenge.all

  end

  def site_search
  	@search= Challenge.ransack(params[:q])   
  	 @search_challenges=@search.result(:distinct => true).paginate(:page => params[:page], :per_page => 20) if params[:q]
    
  end
end
