class CreatePotentialReads < ActiveRecord::Migration[7.0]
  def change
    create_table :potential_reads do |t|
      t.references :user, null: false, foreign_key: true
      t.references :resource, null: false, foreign_key: true

      t.timestamps
    end

    add_index :potential_reads, [:user_id, :resource_id], unique: true
  end
end
