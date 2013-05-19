class CreateSightings < ActiveRecord::Migration
  def change
    create_table :sightings do |t|
      t.belongs_to :user
      t.boolean :sighted
      t.string :visibility
      t.string :comments
      t.float :latitude
      t.float :longitude
      t.attachment :photo

      t.timestamps
    end
    add_index :sightings, :user_id
  end
end
