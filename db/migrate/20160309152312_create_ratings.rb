class CreateRatings < ActiveRecord::Migration[5.0]
  def change
    create_table :ratings do |t|
      t.string :object_name
      t.integer :object_id
      t.integer :user_id
      t.integer :rank
      t.datetime :created_at

      t.timestamps
    end
  end
end
