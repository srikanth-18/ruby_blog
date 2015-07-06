class ChallengesController < ApplicationController
	
	def index

		@challenges = Challenge.all

		@search= Challenge.ransack(params[:q])   
  	 @search_challenges=@search.result(:distinct => true).paginate(:page => params[:page], :per_page => 40) if params[:q]
    
	end

	
	def new
		
		@challenge = Challenge.new
		
		@subdomain= Subdomain.all
	end

	def create

		
		@challenge = Challenge.new(challenge_params)
		if @challenge.save
		redirect_to challenges_path
		else
			render :new
		end
	end

	def edit
		@challenge = Challenge.find(params[:id])
	end

	def update
		@challenge = Challenge.find(params[:id])
		if @challenge.update_attributes(challenge_params)
			redirect_to challenge_path
		else
			render :edit
			
		end
	end

	def show
		
		@challenge = Challenge.find(params[:id])
		
		@comments = @challenge.comments.all
		@comment = @comments.new(:challenge => @challenge)
		
    	@code_from_form = params['comment']

		
	end

	def view

	end

def user_challenges
  @challenges = Challenge.where(admin_user_id: params[:user_id])
 #render :index
 render :action => :view
end

	def destroy
		@challenge = Challenge.find(params[:id])
		@challenge.destroy
		redirect_to challenges_path

	end


	

	private
	def challenge_params
		params.require(:challenge).permit(:title, :body, :input_format, :output_format, :constraints, :subdomain_id, :admin_user_id)

	end



end
