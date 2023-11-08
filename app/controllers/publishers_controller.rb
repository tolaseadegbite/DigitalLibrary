class PublishersController < ApplicationController

    def index
        @publishers = Publisher.order(id: :desc)
    end

    def show
        @publisher ||= Publisher.find(params[:id])
    end
end
