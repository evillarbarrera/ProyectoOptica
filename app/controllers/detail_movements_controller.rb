class DetailMovementsController < ApplicationController
  before_action :set_detail_movement, only: [:show, :edit, :update, :destroy]

  # GET /detail_movements
  # GET /detail_movements.json
  def index
    @detail_movements = DetailMovement.all
  end

  # GET /detail_movements/1
  # GET /detail_movements/1.json
  def show
  end

  # GET /detail_movements/new
  def new
    @detail_movement = DetailMovement.new
  end

  # GET /detail_movements/1/edit
  def edit
  end

  # POST /detail_movements
  # POST /detail_movements.json
  def create
    @detail_movement = DetailMovement.new(detail_movement_params)

    respond_to do |format|
      if @detail_movement.save
        format.html { redirect_to @detail_movement, notice: 'Detail movement was successfully created.' }
        format.json { render :show, status: :created, location: @detail_movement }
      else
        format.html { render :new }
        format.json { render json: @detail_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_movements/1
  # PATCH/PUT /detail_movements/1.json
  def update
    respond_to do |format|
      if @detail_movement.update(detail_movement_params)
        format.html { redirect_to @detail_movement, notice: 'Detail movement was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail_movement }
      else
        format.html { render :edit }
        format.json { render json: @detail_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_movements/1
  # DELETE /detail_movements/1.json
  def destroy
    @detail_movement.destroy
    respond_to do |format|
      format.html { redirect_to detail_movements_url, notice: 'Detail movement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_movement
      @detail_movement = DetailMovement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_movement_params
      params.require(:detail_movement).permit(:header_movements_id, :products_id, :precio_unitario, :cantidad, :total)
    end
end
