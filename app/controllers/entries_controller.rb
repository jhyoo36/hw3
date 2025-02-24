class EntriesController < ApplicationController

  def index
    @entries = Entry.find_by({"id" => params["id"]})
  end

  def new
  end
  
  def create
    @entry = Entry.new

    @entry["title"] = params["title"]
    @entry["description"] = params["decription"]
    @entry["occurred_on"] = params["occurred_on"]
    @entry["place_id"] = params["place_id"]

    @entry.save
    redirect_to "/places"

  end
end
