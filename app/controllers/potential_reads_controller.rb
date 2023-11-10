class PotentialReadsController < ApplicationController
    before_action :authenticate_user!

    def create
        @potential_read = current_user.potential_reads.new(potential_read_params)

        if !@potential_read.save
            flash[:notice] = @potential_read.errors.full_messages.to_sentence
        end

        redirect_back(fallback_location: root_path, notice: "Added to Want to Reads shelf")
    end

    def destroy
        @potential_read = current_user.potential_reads.find(params[:id])
        resource = @potential_read.resource
        @potential_read.destroy
        redirect_back(fallback_location: root_path, notice: "Removed from Want to Reads shelf")
    end

    private

    def potential_read_params
        params.require(:potential_read).permit(:resource_id)
    end
end
