class UsersController < ApplicationController
  # Code may change dependent on the exact search functionality we want.
  # i.e. initial search based on one criterion then further filtering VERSUS initial search using all filters.
  def index
    @users = User.all

    @users = @users.near(params[:location], 5) if params[:location].present? && params[:location] != ""

    # filters
    @users = @users.where("gender = ?", params[:gender]) if params[:gender].present? && params[:gender] != ""
    @users = @users.where("age = ?", params[:age]) if params[:age].present? && params[:age] != ""
    @users = @users.where("level = ?", params[:level]) if params[:level].present? && params[:level] != ""
    @users = @users.where("type_of_climbing = ?", params[:type_of_climbing]) if params[:type_of_climbing].present? && params[:type_of_climbing] != ""

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude
      }
    end
  end

  def show
    @user = User.find(params[:id])
    @review = Review.new
  end
end
