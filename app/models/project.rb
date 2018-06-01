class Project < ApplicationRecord
  belongs_to :client
  has_many :time_trackers
  
end
