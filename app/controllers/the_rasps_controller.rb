class TheRaspsController < ApplicationController
  before_action :set_the_rasp, only: [:show, :edit, :update, :destroy]

  # GET /the_rasps
  # GET /the_rasps.json


  def index
    #@the_rasps = TheRasp.all
    @the_rasps = TheRasp.search(params[:term], params[:term2])

  end



  # GET /the_rasps/1
  # GET /the_rasps/1.json
  def show
  end


  def yep

  end


  # GET /the_rasps/new
  def new
    @the_rasp = TheRasp.new
  end

  # GET /the_rasps/1/edit
  def edit
  end

  # POST /the_rasps
  # POST /the_rasps.json
  def create
    @the_rasp = TheRasp.new(the_rasp_params)

    respond_to do |format|
      if @the_rasp.save
        format.html { redirect_to @the_rasp, notice: 'The rasp was successfully created.' }
        format.json { render :show, status: :created, location: @the_rasp }
      else
        format.html { render :new }
        format.json { render json: @the_rasp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /the_rasps/1
  # PATCH/PUT /the_rasps/1.json
  def update
    respond_to do |format|
      if @the_rasp.update(the_rasp_params)
        format.html { redirect_to @the_rasp, notice: 'The rasp was successfully updated.' }
        format.json { render :show, status: :ok, location: @the_rasp }
      else
        format.html { render :edit }
        format.json { render json: @the_rasp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /the_rasps/1
  # DELETE /the_rasps/1.json
  def destroy
    @the_rasp.destroy
    respond_to do |format|
      format.html { redirect_to the_rasps_url, notice: 'The rasp was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_the_rasp
      @the_rasp = TheRasp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def the_rasp_params
      params.require(:the_rasp).permit(:rfid, :name,:term)
    end
end
