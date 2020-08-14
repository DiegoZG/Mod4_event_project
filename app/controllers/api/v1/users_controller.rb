class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    render json: @users, only: [:username], include: [:tickets]
  end

  def show
  user = User.find(params[:id])
  render json: user.to_json(
    :only => [:name]
  )
  end

end
