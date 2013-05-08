class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :directory
      t.string :rating
      t.integer :year
      t.string :genre
      t.text :summary

      t.timestamps
    end
  end
end
