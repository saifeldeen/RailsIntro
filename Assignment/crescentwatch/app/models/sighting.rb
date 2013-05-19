class Sighting < ActiveRecord::Base
  belongs_to :user
  attr_accessible :comments, :sighted, :visibility
  attr_accessible :photo, :latitude, :longitude
  has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" }


 def as_json(options={})
    {:comments       => self.comments,
     :latitude         => self.latitude,
     :longitude        => self.longitude,
     :sighted        => self.sighted,
     :visibility        => self.visibility,
     :name               => self.user.name,
     :created_at	=> self.created_at
 }
  end

end
