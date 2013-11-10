class Todo < ActiveRecord::Base
  belongs_to :destination
  belongs_to :traveller

  #validates :priority, :numericality,  :less_than_or_equal_to => 3, :greater_than => 0
end
