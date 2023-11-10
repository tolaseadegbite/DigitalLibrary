class ReadingsController < ApplicationController
    before_action :authenticate_user!

    def create
        @reading = current_user.readings.new(reading_params)

        if !@reading.save
            flash[:notice] = @reading.errors.full_messages.to_sentence
        end

        redirect_back(fallback_location: root_path, notice: "Added to Currently Reading shelf")
    end

    def destroy
        @reading = current_user.readings.find(params[:id])
        resource = @reading.resource
        @reading.destroy
        redirect_back(fallback_location: root_path, notice: "Removed from Currently Reading shelf")
    end

    private

    def reading_params
        params.require(:reading).permit(:resource_id)
    end
end
