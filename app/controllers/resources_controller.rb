class ResourcesController < ApplicationController

    def index
        @resources = Resource.order(id: :desc)
    end

    def show
        @resource = Resource.find(params[:id])
    end

    private

    def find_resource
        @resource = Resource.find(params[:id])
    end
end
