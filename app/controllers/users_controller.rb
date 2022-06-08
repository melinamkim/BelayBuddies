class UsersController < ApplicationController
  # Code may change dependent on the exact search functionality we want.
  # i.e. initial search based on one criterion then further filtering VERSUS initial search using all filters.
  def index
    handle_search_location
    handle_filters
  end

  def clear
    clear_session(:search_location, :filter_location, :filter)
    redirect_to users_path
  end

  def show
    @user = User.find(params[:id])
    @review = Review.new
  end

  private

  def initialize_search
    @users = User.alphabetical
    session[:search_location] ||= params[:search_location]
    session[:filter] = params[:filter]
    params[:filter_option] = nil if params[:filter_option] == ""
    session[:filter_option] = params[:filter_option]
  end

  def handle_search_location
    if session[:search_location]
      @users = User.where("location LIKE ?", "%#{session[:search_location].titleize}%")
    else
      @users = User.all
    end
  end

  def handle_filters
    if session[:filter_option] && session[:filter] == "gender"
      @users = @users.where(gender: session[:filter_option])
    elsif session[:filter_option] && session[:filter] == "level"
      @users = @users.where(level: session[:filter_option])
    elsif session[:filter_option] && session[:filter] == "age"
      @users = @users.where(age: session[:filter_option])
    elsif session[:filter_option] && session[:filter] == "type_of_climbing"
      @users = @users.where(type_of_climbing: session[:filter_option])
    end
  end
end
