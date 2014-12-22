class Yellowtail < ActiveRecord::Base
  belongs_to :attendee
  belongs_to :tournament

  scope :tourn, -> (t) { where(tournament_id:t) }

end