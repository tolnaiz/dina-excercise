class UserController < ApplicationController

  def index
    @users = User.all
    @roles = Role.all.collect {|r| [ r.name, r.id ] }
  end

  def new
    user = User.create(user_params)
    user.status = params[:status]
    respond_to do |format|
      if user.save
        format.json { render json: user, status: :created }
      else
        format.json { render json: user.errors, status: :unprocessable_entity }
      end
    end
  end

private
  def user_params
    params.permit(:name, :role_id)
  end
end
