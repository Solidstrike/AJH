class ReviewsController < ApplicationController
  def new
    @review = current_user.reviews.build
  end

  def create
    @review = current_user.reviews.build(review_params)
    @review.user = current_user
    if @review.save
      flash[:notice] = 'success'
    else
      render :new
    p @review.errors
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
