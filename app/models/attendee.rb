class Attendee < ActiveRecord::Base
  has_and_belongs_to_many :tournaments
  has_many :yellowtails
  has_many :golves
end