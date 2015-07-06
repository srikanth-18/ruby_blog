class SubdomainsController < ApplicationController
  def index
  	@subdomains = Subdomain.all
  end

  def edit
  end

  def new
  end

  def show
  	@subdomain = Subdomain.find(params[:id])
  	@title = @subdomain.name
  	@challenges = @subdomain.challenges
  end
end
