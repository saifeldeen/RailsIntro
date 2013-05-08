namespace :db do

  # to access models, you need to include the :environment dependency
  task :initialise => :environment do
  	puts "initialising"
  	puts Movie.column_names
  end

  desc "Recreate database"
  task :recreate => :initialise do
    puts 'Recreating the database'
  end

  desc "Another task"
  task :recreate2 => %w(db:drop db:create db:migrate db:seed)

end


namespace :db do

	desc "Recreating 3"
	task :recreate3 => :recreate2 do
		puts 'dependency from another file'
	end

end