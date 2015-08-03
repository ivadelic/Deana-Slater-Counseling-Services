class ContactsController < ApplicationController
  before_filter :authorize_admin, :except => [:index]
  def index
    @contacts = Contact.all
  end

  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if @contact.save
      flash[:notice] = "New contact section saved."
      redirect_to contacts_path(@contact)
    else
      render :index
    end
  end

  def show
    @contact = Contact.find(params[:id])
  end

  def update
    @contact = Contact.find(params[:id])
    if @contact.update_attributes(contact_params)
      redirect_to contacts_path(@contact)
    else
      render :index
    end
  end

  def edit
    @contact = Contact.find(params[:id])
  end

  def destroy
    @contact = Contact.find(params[:id])
    @contact.destroy
    redirect_to contacts_url
  end

  private
  def contact_params
    params.require(:contact)
    .permit(
      :main_title,
      :name,
      :credits,
      :email,
      :phone_number,
      :description,
      :address
      # :propoints_attributes => [
      #   :id,
      #   :point,
      #   :_destroy
      # ]
      )
  end
  def authorize_admin
    redirect_to :abouts, :status => 401 unless current_admin
  end
end

