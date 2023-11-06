class CreateLoanDurations < ActiveRecord::Migration[7.0]
  def change
    create_table :loan_durations do |t|
      t.integer :days, null: false, default: 7
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
