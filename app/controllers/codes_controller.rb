class CodesController < ApplicationController
def create
	@code = Code.new(code_params)
	 alert(params[:body])
		
		
end
private
	def code_params
		params.require(:code).permit(:body)

	end

end
