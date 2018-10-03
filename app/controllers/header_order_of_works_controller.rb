class HeaderOrderOfWorksController < ApplicationController
  before_action :set_header_order_of_work, only: [:show, :edit, :update, :destroy]

  # GET /header_order_of_works
  # GET /header_order_of_works.json
  def index
    @header_order_of_works = HeaderOrderOfWork.all
  end

  # GET /header_order_of_works/1
  # GET /header_order_of_works/1.json
  def show
  end

  # GET /header_order_of_works/new
  def new
    @header_order_of_work = HeaderOrderOfWork.new
  end

  # GET /header_order_of_works/1/edit
  def edit
  end

  # POST /header_order_of_works
  # POST /header_order_of_works.json
  def create
    @header_order_of_work = HeaderOrderOfWork.new(header_order_of_work_params)

    respond_to do |format|
      if @header_order_of_work.save
        format.html { redirect_to @header_order_of_work, notice: 'Header order of work was successfully created.' }
        format.json { render :show, status: :created, location: @header_order_of_work }
      else
        format.html { render :new }
        format.json { render json: @header_order_of_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /header_order_of_works/1
  # PATCH/PUT /header_order_of_works/1.json
  def update
    respond_to do |format|
      if @header_order_of_work.update(header_order_of_work_params)
        format.html { redirect_to @header_order_of_work, notice: 'Header order of work was successfully updated.' }
        format.json { render :show, status: :ok, location: @header_order_of_work }
      else
        format.html { render :edit }
        format.json { render json: @header_order_of_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /header_order_of_works/1
  # DELETE /header_order_of_works/1.json
  def destroy
    @header_order_of_work.destroy
    respond_to do |format|
      format.html { redirect_to header_order_of_works_url, notice: 'Header order of work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_header_order_of_work
      @header_order_of_work = HeaderOrderOfWork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def header_order_of_work_params
      params.require(:header_order_of_work).permit(:user_id, :fecha_ingres, :fecha_entrega, :horas, :acuenta, :saldo, :total, :flag_entregado)
    end
end
