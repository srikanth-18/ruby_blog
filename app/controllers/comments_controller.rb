class CommentsController < InheritedResources::Base

def create
	@comment = Comment.new(comment_params)
	@comment.save
		redirect_to(challenges_path)
	
end


  private

    def comment_params
      params.require(:comment).permit(:name, :body, :email, :challenge_id)
    end
end

