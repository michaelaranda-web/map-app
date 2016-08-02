class Map < ActiveRecord::Base
  validates :name, presence: true
  validates :starting_latitude, presence: true
  validates :starting_longitude, presence: true
  
end
