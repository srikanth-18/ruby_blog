class Challenge < ActiveRecord::Base
	belongs_to :subdomain
	belongs_to :admin_user
	
	has_many :comments, :dependent => :destroy
		
end
