class LoansController < ApplicationController
    before_action :authenticate_user!

    def create
        @loan = current_user.loans.new(loan_params)

        if !@loan.save
            flash[:notice] = @loan.errors.full_messages.to_sentence
        end

        redirect_back(fallback_location: root_path, notice: "Added to want to Alloany loan shelf")
    end

    def destroy
        @loan = current_user.loans.find(params[:id])
        resource = @loan.resource
        @loan.destroy
        redirect_back(fallback_location: root_path, notice: "Removed from Alloany loan shelf")
    end

    private

    def loan_params
        params.require(:loan).permit(:resource_id, :loan_duration_id)
    end
end
