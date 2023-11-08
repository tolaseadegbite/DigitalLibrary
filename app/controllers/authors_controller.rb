class AuthorsController < ApplicationController

    def index
        @authors = Author.order(id: :desc)
    end

    def show        
        @author ||= Author.find(params[:id])
    end
end
