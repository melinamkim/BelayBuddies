class UsersController < ApplicationController
  # Code may change dependent on the exact search functionality we want.
  def index
    @users = User.all

    @users = @users.near(params[:location], 5) if params[:location].present? && params[:location] != ""

    # filters
    @users = @users.where("gender = ?", params[:gender]) if params[:gender].present? && params[:gender] != ""
    @users = @users.where("level = ?", params[:level]) if params[:level].present? && params[:level] != ""
    @users = @users.where("indoor_bouldering = ?", params[:indoor_bouldering]) if params[:indoor_bouldering].present? && params[:indoor_bouldering] != ""
    @users = @users.where("indoor_sport_climbing = ?", params[:indoor_sport_climbing]) if params[:indoor_sport_climbing].present? && params[:indoor_sport_climbing] != ""
    @users = @users.where("indoor_top_roping = ?", params[:indoor_top_roping]) if params[:indoor_top_roping].present? && params[:indoor_top_roping] != ""
    @users = @users.where("outdoor_bouldering = ?", params[:outdoor_bouldering]) if params[:outdoor_bouldering].present? && params[:outdoor_bouldering] != ""
    @users = @users.where("outdoor_sport_climbing = ?", params[:outdoor_sport_climbing]) if params[:outdoor_sport_climbing].present? && params[:outdoor_sport_climbing] != ""
    @users = @users.where("outdoor_trad_climbing = ?", params[:outdoor_trad_climbing]) if params[:outdoor_trad_climbing].present? && params[:outdoor_trad_climbing] != ""

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
end
