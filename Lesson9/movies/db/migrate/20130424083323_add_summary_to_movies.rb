class AddSummaryToMovies < ActiveRecord::Migration
  def change
  	add_column :movies, :summary, :string
  end
end
