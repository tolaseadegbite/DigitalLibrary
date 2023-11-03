class AddResourceTypeToResources < ActiveRecord::Migration[7.0]
  def change
    add_reference :resources, :resource_type, null: false, foreign_key: true
  end
end
