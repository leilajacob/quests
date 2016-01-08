class HomeController < ApplicationController
	def index 
		@blog_post = BlogPost.includes(:comments).order("created_at").limit(1)
	end
end
