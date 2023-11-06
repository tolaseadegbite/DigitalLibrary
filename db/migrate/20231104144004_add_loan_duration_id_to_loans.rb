class AddLoanDurationIdToLoans < ActiveRecord::Migration[7.0]
  def change
    add_reference :loans, :loan_duration, null: false, foreign_key: true
  end
end
