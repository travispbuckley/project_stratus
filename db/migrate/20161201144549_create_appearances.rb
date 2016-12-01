class CreateAppearances < ActiveRecord::Migration
  def change
    create_table :appearances do |t|
      t.integer :user_id, {null: false}
      t.integer :location_id, {null: false}

      t.timestamps(null: false)
    end
  end
end
