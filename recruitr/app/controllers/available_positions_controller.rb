class AvailablePositionsController < ApplicationController
  before_action :set_available_position, only: [:show, :edit, :update, :destroy]

  # GET /available_positions
  # GET /available_positions.json
  def index
    if params[:participant_id]
      @available_positions = Participant.find(params[:participant_id]).includes(:participants).available_position
    else
      @available_positions = AvailablePosition.all
    end
  end

  # GET /available_positions/1
  # GET /available_positions/1.json
  def show
  end

  # GET /available_positions/new
  def new
    @available_position = AvailablePosition.new
    @available_position.skills.build
  end

  # GET /available_positions/1/edit
  def edit
  end

  # POST /available_positions
  # POST /available_positions.json
  def create
    @available_position = AvailablePosition.new(available_position_params)

    respond_to do |format|
      if @available_position.save
        format.html { redirect_to @available_position, notice: 'Available position was successfully created.' }
        format.json { render :show, status: :created, location: @available_position }
      else
        format.html { render :new }
        format.json { render json: @available_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /available_positions/1
  # PATCH/PUT /available_positions/1.json
  def update
    respond_to do |format|
      if @available_position.update(available_position_params)
        format.html { redirect_to @available_position, notice: 'Available position was successfully updated.' }
        format.json { render :show, status: :ok, location: @available_position }
      else
        format.html { render :edit }
        format.json { render json: @available_position.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /available_positions/1
  # DELETE /available_positions/1.json
  def destroy
    @available_position.destroy
    respond_to do |format|
      format.html { redirect_to available_positions_url, notice: 'Available position was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_available_position
      @available_position = AvailablePosition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def available_position_params
      params.require(:available_position).permit(:content, :applications_count, :skills_attributes => [:content])
    end
end
