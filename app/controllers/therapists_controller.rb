class TherapistsController < ApplicationController
  def index
    @therapists = Therapist.all
  end

  def new
    @therapist = Therapist.new
  end

  def create
    @therapist = Therapist.new(therapist_params)
    if @therapist.save
      flash[:notice] = "New Therapist section saved."
      redirect_to therapists_path(@therapist)
    else
      render :index
    end
  end

  def show
    @therapist = Therapist.find(params[:id])
  end

  def update
    @therapist = Therapist.find(params[:id])
    if @therapist.update_attributes(therapist_params)
      redirect_to therapists_path(@therapist)
    else
      render :index
    end
  end

  def edit
    @therapist = Therapist.find(params[:id])
  end

  def destroy
    @therapist = Therapist.find(params[:id])
    @therapist.destroy
    redirect_to therapists_url
  end

  private
  def therapist_params
    params.require(:therapist)
    .permit(
      :therapists_title,
      :therapists_text,
      :therapist1_title,
      :therapist1_text,
      :therapist1_link,
      :therapist2_title,
      :therapist2_text,
      :therapist2_link
      )
  end

  def authorize_admin
    redirect_to :therapists, :status => 401 unless current_admin
  end
end
