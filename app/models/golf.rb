class Golf < ActiveRecord::Base
  belongs_to :attendee
  belongs_to :tournament
end
