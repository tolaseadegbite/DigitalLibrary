class ResourcesController < ApplicationController

    def index
        @resources = Resource.all
    end

    def show
        @resource = Resource.find(params[:id])
    end

    private

    def find_resource
        @resource = Resource.find(params[:id])
    end
end
