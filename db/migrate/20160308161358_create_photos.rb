class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.integer :author_id
      t.string :title
      t.string :description
      t.string :picture
      t.string :url
      t.string :tags
      t.integer :votes_up
      t.integer :votes_down
      t.datetime :created_at

      t.timestamps
    end
  end
end
