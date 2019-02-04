class CreateMsws < ActiveRecord::Migration[5.2]
  def change
    create_table :msws do |t|

      t.timestamps
    end
  end
end
