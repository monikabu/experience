class CreatePieces < ActiveRecord::Migration
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :url
      t.integer :artist_id

      t.timestamps null: false
    end
    add_index :pieces, :artist_id
  end
end
