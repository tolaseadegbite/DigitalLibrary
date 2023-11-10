class SearchesController < ApplicationController

    def new
        @search = Search.new
        # @categories = Resource.distinct.pluck(:category_id)
        # @authors = Resource.distinct.pluck(:author_id)
        # @publishers = Resource.distinct.pluck(:publisher_id)
        # @resource_languages = Resource.distinct.pluck(:resource_language_id)
        # @resource_types = Resource.distinct.pluck(:resource_type_id)
    end

    def create
        @search = Search.create(search_params)
        redirect_to @search
    end

    def show
        @search = Search.find(params[:id])
    end

    private

    def search_params
        params.require(:search).permit(:keyword, :category_id, :author_id, :publisher_id, :resource_language_id, :resource_type_id)
    end
end
