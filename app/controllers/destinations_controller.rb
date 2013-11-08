class DestinationsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def create
    @todo =Todo.new
    @destination = Destination.new(destination_params)
    if @destination.save
      respond_to do |format|
        format.js {render :create}
        format.html {redirect_to pages_homepage_path}
      end
    else
      render pages_homepage_path
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

private
  def destination_params
    params.require(:destination).permit(:name, :image_url, :traveller_id)
  end
end
