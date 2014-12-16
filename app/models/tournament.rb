class Tournament < ActiveRecord::Base
  has_and_belongs_to_many :attendees
  has_many :yellowtails
  has_many :golves
end