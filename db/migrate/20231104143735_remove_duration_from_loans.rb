class RemoveDurationFromLoans < ActiveRecord::Migration[7.0]
  def change
    remove_column :loans, :duration, :integer
  end
end
