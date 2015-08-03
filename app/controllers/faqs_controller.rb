class FaqsController < ApplicationController
  before_filter :authorize_admin, :except => [:index]
  def index
    @faqs = Faq.all
    @questions = Question.all
  end

  def new
    @faq = Faq.new
  end

  def edit
    @faq = Faq.find(params[:id])
  end

  def create
    @faq = Faq.new(faq_params)
    if @faq.save
      flash[:notice] = "New Faq section saved."
      redirect_to faqs_path(@faq)
    else
      render :index
    end
  end

  def update
    @faq = Faq.find(params[:id])
    if @faq.update_attributes(faq_params)
      redirect_to faqs_path(@faq)
    else
      render :index
    end
  end

  def destroy
    @faq = Faq.find(params[:id])
    @faq.destroy
    redirect_to faqs_url
  end

  private
  def faq_params
    params.require(:faq)
    .permit(:main_title,
      questions_attributes: [
        :id,
        :question,
        :answer,
        :_destroy
      ])
  end
  def authorize_admin
    redirect_to :abouts, :status => 401 unless current_admin
  end
end
