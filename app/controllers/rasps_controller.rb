class RaspsController < ApplicationController

  def index
    render "show"
  end

  def new
  end

  def show
    @rasps = Rasp.search(params[:rasp_id])
  end

end