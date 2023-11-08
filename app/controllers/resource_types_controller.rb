class ResourceTypesController < ApplicationController
  def index
    @resource_types = ResourceType.order(id: :desc)
  end

  def show
    @resource_type ||= ResourceType.find(params[:id])
  end
end
