class ResourcesController < ApplicationController
  def index
    @resources = Resource.all
    @articlepoints = Articlepoint.all
    @webpoints = Webpoint.all
    @telpoints = Telpoint.all
  end

  def new
    @resource = Resource.new
  end

  def edit
    @resource = Resource.find(params[:id])
  end

  def update
    @resource = Resource.find(params[:id])
    if @resource.update_attributes(resource_params)
      redirect_to resources_path(@resource)
    else
      render :index
    end
  end

  def show
    @about = About.find(params[:id])
  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy
    redirect_to resources_url
  end

  def create
    @resource = Resource.new(resource_params)
    if @resource.save
      redirect_to resources_path, notice: "Project created successfully!"
    else
      render 'new', alert: "Something went wrong! Try again?"
    end
  end

  private
  def resource_params
    params.require(:resource)
    .permit([
    :main_title,
    :main_paragraph,
    :telephone_title,
    :website_title,
    :article_title,
      :articlepoints_attributes =>[
        :id,
        :article_name,
        :article_link,
        :_destroy
      ],
      :webpoints_attributes => [
        :id,
        :website_company,
        :website_link,
        :_destroy
      ],
      :telpoints_attributes =>[
      :id,
      :telephone_company,
      :telephone_number,
      :_destroy
      ]
      ])
  end
end
