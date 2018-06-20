class OrderhaspizzasController < ApplicationController
  before_action :set_orderhaspizza, only: [:show, :edit, :update, :destroy]

  # GET /orderhaspizzas
  # GET /orderhaspizzas.json
  def index
    @orderhaspizzas = Orderhaspizza.all
  end

  # GET /orderhaspizzas/1
  # GET /orderhaspizzas/1.json
  def show
  end

  # GET /orderhaspizzas/new
  def new
    @orderhaspizza = Orderhaspizza.new
  end

  # GET /orderhaspizzas/1/edit
  def edit
  end

  # POST /orderhaspizzas
  # POST /orderhaspizzas.json
  def create
    @orderhaspizza = Orderhaspizza.new(orderhaspizza_params)

    respond_to do |format|
      if @orderhaspizza.save
        format.html { redirect_to @orderhaspizza, notice: 'Orderhaspizza was successfully created.' }
        format.json { render :show, status: :created, location: @orderhaspizza }
      else
        format.html { render :new }
        format.json { render json: @orderhaspizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orderhaspizzas/1
  # PATCH/PUT /orderhaspizzas/1.json
  def update
    respond_to do |format|
      if @orderhaspizza.update(orderhaspizza_params)
        format.html { redirect_to @orderhaspizza, notice: 'Orderhaspizza was successfully updated.' }
        format.json { render :show, status: :ok, location: @orderhaspizza }
      else
        format.html { render :edit }
        format.json { render json: @orderhaspizza.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orderhaspizzas/1
  # DELETE /orderhaspizzas/1.json
  def destroy
    @orderhaspizza.destroy
    respond_to do |format|
      format.html { redirect_to orderhaspizzas_url, notice: 'Orderhaspizza was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_orderhaspizza
      @orderhaspizza = Orderhaspizza.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def orderhaspizza_params
      params.require(:orderhaspizza).permit(:order_id, :pizzas_id)
    end
end
