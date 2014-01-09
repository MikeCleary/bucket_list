class TodosController < ApplicationController
  def create
    @todo = Todo.new(todo_params)
    #@todo.traveller_id = current_traveller.id
    if @todo.save
      respond_to do |format|
        format.js {render :create}
        format.html {redirect_to pages_homepage_path}
      end
    else
      render pages_homepage_path
    end
  end

  def index 
    @todos = Todo.order(:priority)
    respond_to do |format|
      #Replies with a JSON object we can use for rendering map markers
      format.json { render :json => @todos.as_json(:only => [:latitude, :longitude, :name]) }
      format.html
    end
  end

  private
  def todo_params
    params.require(:todo).permit(:name, :image_url, :traveller_id, :destination_id, :priority, :location, :longitude, :latitude)
  end
end