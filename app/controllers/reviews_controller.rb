class ReviewsController < ApplicationController



  def create
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    @product = Product.find params[:product_id]
    @new_review_params = {
      "user_id" => @current_user.id,
      "product_id" => params[:product_id],
      "description" => review_params[:description],
      "rating" => review_params[:rating]
    }
    review = Review.new(@new_review_params)
    review.save
    redirect_to @product

  end

  def destroy
        @review = Review.find params[:id]
        @review.destroy
        redirect_to "/products/#{params[:product_id]}"
    end



  private

  def review_params
    params.require(:review).permit(
      :description,
      :rating
      )
  end

end


  # validates :product_id, presence: true
  # validates :user_id, presence: true
  # validates :description, presence: true
  # validates :rating, presence: true