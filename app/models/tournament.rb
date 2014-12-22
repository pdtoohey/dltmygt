class Tournament < ActiveRecord::Base
  has_and_belongs_to_many :attendees

  has_many :yellowtails, :through  => :attendee
  has_many :golves, :through => :attendee
end