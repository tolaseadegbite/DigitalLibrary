class AddMatricNoToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :matric_no, :string
  end
end
