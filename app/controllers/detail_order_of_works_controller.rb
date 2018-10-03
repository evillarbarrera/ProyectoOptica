class DetailOrderOfWorksController < ApplicationController
  before_action :set_detail_order_of_work, only: [:show, :edit, :update, :destroy]

  # GET /detail_order_of_works
  # GET /detail_order_of_works.json
  def index
    @detail_order_of_works = DetailOrderOfWork.all
  end

  # GET /detail_order_of_works/1
  # GET /detail_order_of_works/1.json
  def show
  end

  # GET /detail_order_of_works/new
  def new
    @detail_order_of_work = DetailOrderOfWork.new
  end

  # GET /detail_order_of_works/1/edit
  def edit
  end

  # POST /detail_order_of_works
  # POST /detail_order_of_works.json
  def create
    @detail_order_of_work = DetailOrderOfWork.new(detail_order_of_work_params)

    respond_to do |format|
      if @detail_order_of_work.save
        format.html { redirect_to @detail_order_of_work, notice: 'Detail order of work was successfully created.' }
        format.json { render :show, status: :created, location: @detail_order_of_work }
      else
        format.html { render :new }
        format.json { render json: @detail_order_of_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detail_order_of_works/1
  # PATCH/PUT /detail_order_of_works/1.json
  def update
    respond_to do |format|
      if @detail_order_of_work.update(detail_order_of_work_params)
        format.html { redirect_to @detail_order_of_work, notice: 'Detail order of work was successfully updated.' }
        format.json { render :show, status: :ok, location: @detail_order_of_work }
      else
        format.html { render :edit }
        format.json { render json: @detail_order_of_work.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detail_order_of_works/1
  # DELETE /detail_order_of_works/1.json
  def destroy
    @detail_order_of_work.destroy
    respond_to do |format|
      format.html { redirect_to detail_order_of_works_url, notice: 'Detail order of work was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detail_order_of_work
      @detail_order_of_work = DetailOrderOfWork.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detail_order_of_work_params
      params.require(:detail_order_of_work).permit(:header_order_of_work_id, :cod_ojo, :cod_cercania, :esf, :cil, :eje, :dip, :altura, :cb, :diam, :productos_id, :observaciones)
    end
end
