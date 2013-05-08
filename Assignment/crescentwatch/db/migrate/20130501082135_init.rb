class Init < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :password

      t.timestamps
    end

    create_table :locations do |t|
      t.string :name
      t.float :lat
      t.float :long
      t.string :location_type
      t.string :country
      t.string :city
      t.integer :gmt_offset

      t.timestamps
  	end


    create_table :moon_phases do |t|
      t.float :illumination
      t.timestamp :phase_time_gmt
      t.references :location

      t.timestamps
    end
    add_index :moon_phases, :location_id

  end

end
