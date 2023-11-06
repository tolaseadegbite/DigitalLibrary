class CreateWaitlists < ActiveRecord::Migration[7.0]
  def change
    create_table :waitlists do |t|
      t.references :user, null: false, foreign_key: true
      t.references :resource, null: false, foreign_key: true

      t.timestamps
    end

    add_index :waitlists, [:user_id, :resource_id], unique: true
  end
end
