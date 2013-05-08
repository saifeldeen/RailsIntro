class Location < ActiveRecord::Base
  attr_accessible :lat, :long, :name, :location_type, :country, :city, :gmt_offset
end
