class Project < ApplicationRecord
  belongs_to :client
  has_many :time_trackers
 
  def completed?
    !completed_at.blank?
	end
end
