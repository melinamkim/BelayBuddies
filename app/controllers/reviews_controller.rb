class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    @review.author = current_user
    @user = User.find(params[:user_id])
    @review.user = @user
    if @review.save
      redirect_to user_path(@user)
    else
      render 'users/show', status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating)
  end
end
