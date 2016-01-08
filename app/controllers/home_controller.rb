class HomeController < ApplicationController
	def index 
		@blog_post = BlogPost.order("created_at").limit(1)
	end
end
