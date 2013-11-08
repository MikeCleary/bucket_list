require 'spec_helper'

describe TodosController do

  before do 
    form_params = {
      :todo => {
        :name => "pet a capybara",
        :image_url => "http://realanimalslife.com/data_images/capybara/capybara-11.jpg",
        :destination_id => 33
      }
    }

    post 'create', form_params
  end

  describe "GET 'create'" do
    it "makes a destination" do
      expect(Todo.all.length).to eq(1)
      expect(Todo.first.name).to eq("pet a capybara")
      expect(Todo.first.destination_id).to eq(33)
    end
  end

end
