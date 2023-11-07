class AddPotentialReadsCountToResources < ActiveRecord::Migration[7.0]
  def change
    add_column :resources, :potential_reads_count, :integer, default: 0, null: false
  end
end
