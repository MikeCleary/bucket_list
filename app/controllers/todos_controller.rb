class TodosController < ApplicationController
  def create
    @todo = Todo.new(todo_params)
    @todo.traveller_id = current_traveller.id
    if @todo.save
      respond_to do |format|
        format.js {render :create}
        format.html {redirect_to pages_homepage_path}
      end
    else
      render pages_homepage_path
    end
  end

  private
  def todo_params
    params.require(:todo).permit(:name, :image_url, :traveller_id, :destination_id)
  end
end