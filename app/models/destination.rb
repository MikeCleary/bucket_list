class Destination < ActiveRecord::Base
  belongs_to :traveller
  has_many :todos, :order => :priority
end
