class AboutsController < ApplicationController
  def index
    @abouts = About.all
  end

  def new
    @about = About.new
    @about.propoint = Propoint.new
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
    @avout = About.find(params[:id])
  end

  def update
    @about = About.find(params[:id])
    if @about.update_attributes(about_params)
      redirect_to abouts_path(@ahout)
    else
      render :index
    end
  end

  def edit
    @about = About.find(params[:id])
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
      propoints_attributes: [
        :id,
        :points,
        :_destroy
      ])
  end
end
      # :professional_membership_point1,
      # :professional_membership_point2,
      # :professional_membership_point3,
