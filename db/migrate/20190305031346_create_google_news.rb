class CreateGoogleNews < ActiveRecord::Migration[5.2]
  def change
    create_table :google_news do |t|

      t.timestamps
    end
  end
end
