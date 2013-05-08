require "test_helper"

describe Movie do
  before do
    @movie = Movie.new
  end

  describe 'with all nil attributes' do
  	it 'must not be valid' do
  		@movie.valid?.wont_equal true
  	end
  end

  describe 'with a title' do
  	before do
  		@movie.title = 'Jaws'
  		@movie.year = 1901
  	end

  	it 'must be valid' do
#  		@movie.valid?.must_equal true
  		assert_equal true, @movie.valid?
  	end 	
  end 

  describe 'a movie prior to 1900' do
  	before do
  		@movie.title = 'Old movie'
  		@movie.year = 1890
  	end

  	it 'must not be valid' do
  		assert !@movie.valid?
  	end
  end

end
