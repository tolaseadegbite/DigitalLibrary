class AddCopiesToResources < ActiveRecord::Migration[7.0]
  def change
    add_column :resources, :copies, :integer
  end
end
