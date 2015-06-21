class ReviewsController < ApplicationController
	before_action :authenticate_user!

	def create
	    @artist = Artist.find(params[:artist_id])
	    @review = @artist.reviews.new(review_params)
	    @review.user_id = current_user.id
	    @review.email = current_user.email
	    @review.save
	    redirect_to artist_path(@artist)
  	end

  	def destroy
	    @artist = Artist.find(params[:artist_id])
	    @review = @artist.reviews.find(params[:id])
	    @review.destroy
	    redirect_to artist_path(@artist)
    end
 
 	private
   		def review_params
      		params.require(:review).permit(:rating, :comment)
    	end
end
