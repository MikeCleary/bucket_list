require 'spec_helper'

describe DestinationsController do

  before do


    form_params = { :destination => { :name => "Paris",
      :image_url => "http://www.puretravel.com/blog/wp-content/uploads/2012/11/Arc-de-Triomphe-at-night-in-Paris-France.jpg",
      :traveller_id => Traveller.make.id}}
      post 'create', form_params
    end
    

  describe "GET 'create'" do
    it "makes a destination" do
      expect(Destination.all.length).to eq(1)
      expect(Destination.first.name).to eq("Paris")
    end

    # it "should redirect me to the show page" do
    #   expect
  end



  # describe "GET 'index'" do
  #   it "returns http success" do
  #     get 'index'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'show'" do
  #   it "returns http success" do
  #     get 'show'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'new'" do
  #   it "returns http success" do
  #     get 'new'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'edit'" do
  #   it "returns http success" do
  #     get 'edit'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'update'" do
  #   it "returns http success" do
  #     get 'update'
  #     response.should be_success
  #   end
  # end

  # describe "GET 'destroy'" do
  #   it "returns http success" do
  #     get 'destroy'
  #     response.should be_success
  #   end
  # end

end
