class PagesController < ApplicationController
  def homepage
    @destination = Destination.new
    @destination.traveller_id = current_traveller.id
    @destinations = Destination.all
  end
end
