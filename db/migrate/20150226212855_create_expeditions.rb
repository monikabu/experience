class CreateExpeditions < ActiveRecord::Migration
  def change
    create_table :expeditions do |t|
      t.string :title
      t.string :starting_point
      t.string :destination
      t.datetime :start_date
      t.string :end_datedatetime
      t.text :coment

      t.timestamps null: false
    end
  end
end
