class Todo < ActiveRecord::Base
  belongs_to :destination
  belongs_to :traveller

  geocoded_by :destination_and_location

  after_validation :geocode

  def destination_and_location
    "#{self.location} #{self.destination.name}"
  end

  #validates :priority, :numericality,  :less_than_or_equal_to => 3, :greater_than => 0
end
