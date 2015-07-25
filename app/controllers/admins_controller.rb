class AdminsController < ApplicationController

  def index
    if params[:approved] == "false"
      @users = User.find_all_by_approved(false)
    else
      @users = User.all
    end
  end

  def new
    @admin = Admin.new
  end

  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to root_url, :notice => "Signed up!"
    else
      render "new"
    end
  end

  private
  def admin_params
    params.require(:admin)
    .permit(
      :email,
      :password,
      :password_confirmation
      )
  end
end
