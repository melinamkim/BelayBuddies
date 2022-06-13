class UsersController < ApplicationController
  # Code may change dependent on the exact search functionality we want.
  def index
    @users = User.all

    @users = @users.near(params[:location], 5) if params[:location].present? && params[:location] != ""

    # filters
    @users = @users.where("gender ILIKE ?", params[:gender]) if params[:gender].present? && params[:gender] != ""
    @users = @users.where("level ILIKE ?", params[:level]) if params[:level].present? && params[:level] != ""
    @users = @users.where("bouldering = ?", params[:bouldering]) if params[:bouldering].present? && params[:bouldering] != ""
    @users = @users.where("sport_climbing = ?", params[:sport_climbing]) if params[:sport_climbing].present? && params[:sport_climbing] != ""
    @users = @users.where("top_roping = ?", params[:top_roping]) if params[:top_roping].present? && params[:top_roping] != ""
    @users = @users.where("trad_climbing = ?", params[:trad_climbing]) if params[:trad_climbing].present? && params[:trad_climbing] != ""

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user })
      }
    end
  end

  def show
    @user = User.find(params[:id])
    @review = Review.new
    @chatroom = Chatroom.new
  end

  def my_profile
    @user = current_user
  end
end
