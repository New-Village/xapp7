class MainsController < ApplicationController

  # GET /mains
  # GET /mains.json
  def index
  end

  
  def sitelist
    @regSite = Site.new # TEMP Site Registration
    @sList = Sbsc.all # Site List 購読中のサイト一覧
  end
  
end