class AboutsController < ApplicationController
  before_filter :authorize_admin, :except => [:index]
  def index
    @abouts = About.all
    @propoints = Propoint.all
  end

  def new
    @about = About.new
    # @about.propoint = Propoint.new
  end

  def create
    @about = About.new(about_params)
    if @about.save
      flash[:notice] = "New About section saved."
      redirect_to abouts_path(@about)
    else
      render :index
    end
  end

  def show
    @about = About.find(params[:id])
  end

  def update
    @about = About.find(params[:id])
    if @about.update_attributes(about_params)
      redirect_to abouts_path(@about)
    else
      render :index
    end
  end

  def edit
    @about = About.find(params[:id])
    # @about.propoint = Propoint.find(params[:id])
  end

  def destroy
    @about = About.find(params[:id])
    @about.destroy
    redirect_to abouts_url
  end

  private
  def about_params
    params.require(:about)
    .permit(
      :main_title,
      :main_paragraph,
      :approach_title,
      :approach_paragraph,
      :education_title,
      :education_paragraph,
      :propoints_attributes => [
        :id,
        :point,
        :_destroy
        ])
  end

  def authorize_admin
    redirect_to :abouts, :status => 401 unless current_admin
  end
end