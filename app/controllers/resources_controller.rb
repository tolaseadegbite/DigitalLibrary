class ResourcesController < ApplicationController

    def index
        @resources = Resource.order(id: :desc).where(["name LIKE ?","%#{params[:search]}%"])
    end

    def show
        @resource = Resource.find(params[:id])
        @related_resources = @resource.category.resources.where.not(id: @resource).limit(6)
    end

    private

    def find_resource
        @resource = Resource.find(params[:id])
    end
end
