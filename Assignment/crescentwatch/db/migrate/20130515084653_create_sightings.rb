class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.belongs_to :user
      t.boolean :sighted
      t.string :visibility
      t.string :comments
      t.string :photo

      t.timestamps
    end
    add_index :sightings, :user_id
  end
end
