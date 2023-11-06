class AddLoansCountToResources < ActiveRecord::Migration[7.0]
  def change
    add_column :resources, :loans_count, :integer
  end
end
