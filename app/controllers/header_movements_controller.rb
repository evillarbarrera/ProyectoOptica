class HeaderMovementsController < ApplicationController
  before_action :set_header_movement, only: [:show, :edit, :update, :destroy]

  # GET /header_movements
  # GET /header_movements.json
  def index
    @header_movements = HeaderMovement.all
  end

  # GET /header_movements/1
  # GET /header_movements/1.json
  def show
  end

  # GET /header_movements/new
  def new
    @header_movement = HeaderMovement.new
  end

  # GET /header_movements/1/edit
  def edit
  end

  # POST /header_movements
  # POST /header_movements.json
  def create
    @header_movement = HeaderMovement.new(header_movement_params)

    respond_to do |format|
      if @header_movement.save
        format.html { redirect_to @header_movement, notice: 'Header movement was successfully created.' }
        format.json { render :show, status: :created, location: @header_movement }
      else
        format.html { render :new }
        format.json { render json: @header_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /header_movements/1
  # PATCH/PUT /header_movements/1.json
  def update
    respond_to do |format|
      if @header_movement.update(header_movement_params)
        format.html { redirect_to @header_movement, notice: 'Header movement was successfully updated.' }
        format.json { render :show, status: :ok, location: @header_movement }
      else
        format.html { render :edit }
        format.json { render json: @header_movement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /header_movements/1
  # DELETE /header_movements/1.json
  def destroy
    @header_movement.destroy
    respond_to do |format|
      format.html { redirect_to header_movements_url, notice: 'Header movement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_header_movement
      @header_movement = HeaderMovement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def header_movement_params
      params.require(:header_movement).permit(:movement_types_id, :document_types_id, :header_order_of_works_id, :providers_id, :fecha_creacion)
    end
end
