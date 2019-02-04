class AddColumnsToMsws < ActiveRecord::Migration[5.2]
  def change
    add_column :msws, :spot_name, :string
    add_column :msws, :spot_id, :integer
  end
end
