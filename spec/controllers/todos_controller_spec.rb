require 'spec_helper'

describe TodosController do

  before do 
    @peru = Destination.create(
      :name => "Peru",
      :image_url => "http://cdni.condenast.co.uk/646x430/o_r/peru_cnt_9nov09_istock_b.jpg"
      )
    
    params = {
      :destination_id => @peru.id,
      :todo => {
        :name => "pet a capybara",
        :image_url => "http://realanimalslife.com/data_images/capybara/capybara-11.jpg",
        :destination_id => @peru.id,
        :location => "Maccu Piccu"
      }
    }

    post :create, params
  end

  describe "GET 'create'" do
    it "makes a todo" do
      expect(Todo.all.length).to eq(1)
      expect(Todo.first.name).to eq("pet a capybara")
      expect(Todo.first.destination_id).to eq(@peru.id)
      expect(Todo.first.longitude).to eq("-72.5459259")
      expect(Todo.first.latitude).to eq("-13.1636223")
    end
  end

  context "get all todos" do
    before do
      @peru = Destination.create(
        :name => "Peru",
        :image_url => "http://cdni.condenast.co.uk/646x430/o_r/peru_cnt_9nov09_istock_b.jpg"
        )

      @high_priority_todo = Todo.create(
        :name => "pet a capybara", 
        :priority => 1
        )
      @medium_priority_todo = Todo.create(
        :name => "see Maccu Piccu",
        :priority => 2
        )

      @low_priority_todo = Todo.create(
        :name => "get spat on by a llama",
        :priority => 3
        )

      @peru.todos << @low_priority_todo
      @peru.todos << @medium_priority_todo
      @peru.todos << @high_priority_todo
      @peru.save
      @peru.reload

      get :index, :destination_id => @peru.id
    end

    # it "should find ToDo items in order of priority" do
    #   binding.pry
    #   expect(assigns(:todos)[0].todos.length).to eq(3)
    #   expect(assigns(:todos)[0].todos.first).to eq(@high_priority_todo)
    #   expect(assigns(:todos)[0].todos.second).to eq(@medium_priority_todo)
    #   expect(assigns(:todos)[0].todos.third).to eq(@low_priority_todo)
    # end
  end
end
