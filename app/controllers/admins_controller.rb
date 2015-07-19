class AdminsController < ApplicationController
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

  def admin_params
    params.require(:admin)
    .permit(
      :email,
      :password_hash,
      :passwor_salt
      )
  end
end
