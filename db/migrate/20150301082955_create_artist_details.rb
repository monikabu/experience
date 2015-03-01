class CreateArtistDetails < ActiveRecord::Migration
  def change
    create_table :artist_details do |t|
      t.string :title
      t.text :detail
      t.integer :artist_id

      t.timestamps null: false
    end
    add_index :artist_details, :artist_id
  end
end
