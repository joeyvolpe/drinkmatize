class SpiritsController < ApplicationController

  def index
    @spirits = Spirit.all
  end

  def show
    @spirit = Spirit.find(params[:id])
 
  end

  def new
    @spirit = Spirit.new
  end
  

end
