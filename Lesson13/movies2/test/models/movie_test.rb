require "test_helper"

describe Movie do

  describe 'with all nil attributes' do
	before do
      @movie = Movie.new
    end
  	it 'must not be valid' do
  		@movie.valid?.wont_equal true
  	end
  end

  describe 'a typical movie' do
	  before do
	 	@movie = FactoryGirl.create(:movie)
	  end

	  it 'must be valid' do
	  	assert @movie.valid?
	  end

	  describe 'without a title' do
	  	before do
	  		@movie.title = nil
	  	end

	  	it 'must not be valid' do
	  		assert_equal false, @movie.valid?
	  	end 	
	  end 

	  describe 'a movie prior to 1900' do
	  	before do
	  		@movie.year = 1890
	  	end

	  	it 'must not be valid' do
	  		assert !@movie.valid?
#	  		assert_equal 1, @movie.errors.count
#	  		assert_includes @movie.errors[:year], "must be greater than 1900"
	  	end
	  end
  end

end
