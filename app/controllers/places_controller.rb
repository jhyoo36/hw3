class PlacesController < ApplicationController

  def index
    @places = Place.all
  end

  def new
  end

  def show
    @places = Place.find_by({"id" => params["id]"]})
  end

end
