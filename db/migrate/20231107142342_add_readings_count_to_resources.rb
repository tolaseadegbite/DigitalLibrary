class AddReadingsCountToResources < ActiveRecord::Migration[7.0]
  def change
    add_column :resources, :readings_count, :integer, default: 0, null: false
  end
end
