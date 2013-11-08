class Todo < ActiveRecord::Base
  belongs_to :destination
  belongs_to :traveller
end
