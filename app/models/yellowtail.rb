class Yellowtail < ActiveRecord::Base
  belongs_to :attendee
  belongs_to :tournament
end
