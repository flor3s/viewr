class StaticPagesController < ApplicationController
	def index
		@user_id = params[:user_id]
		unless @user_id.nil?
			@photos = flickr.photos.search(user_id: @user_id, per_page: 30)
		end
	end
end
