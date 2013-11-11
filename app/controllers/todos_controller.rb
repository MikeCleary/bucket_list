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
    @todos = Destination.includes(:todos).where("todos.destination_id =?", params[:destination_id])
  end

  private
  def todo_params
    params.require(:todo).permit(:name, :image_url, :traveller_id, :destination_id, :priority, :location, :longitude, :latitude)
  end
end