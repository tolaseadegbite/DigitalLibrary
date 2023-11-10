class ReadsController < ApplicationController
    before_action :authenticate_user!

    def create
        @read = current_user.reads.new(read_params)

        if !@read.save
            flash[:notice] = @read.errors.full_messages.to_sentence
        end

        redirect_back(fallback_location: root_path, notice: "Added to Already Read shelf")
    end

    def destroy
        @read = current_user.reads.find(params[:id])
        resource = @read.resource
        @read.destroy
        redirect_back(fallback_location: root_path, notice: "Removed from Already Read shelf")
    end

    private

    def read_params
        params.require(:read).permit(:resource_id)
    end
end
