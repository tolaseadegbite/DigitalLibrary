class WaitlistsController < ApplicationController
    before_action :authenticate_user!

    def create
        @waitlist = current_user.waitlists.new(waitlist_params)

        if !@waitlist.save
            flash[:notice] = @waitlist.errors.full_messages.to_sentence
        end

        redirect_back(fallback_location: root_path, notice: "Added to want to potential reads shelf")
    end

    def destroy
        @waitlist = current_user.waitlists.find(params[:id])
        resource = @waitlist.resource
        @waitlist.destroy
        redirect_back(fallback_location: root_path, notice: "Removed from potential reads shelf")
    end

    private

    def waitlist_params
        params.require(:waitlist).permit(:resource_id)
    end
end
