class RecipehasingredientsController < ApplicationController
  before_action :set_recipehasingredient, only: [:show, :edit, :update, :destroy]

  # GET /recipehasingredients
  # GET /recipehasingredients.json
  def index
    @recipehasingredients = Recipehasingredient.all
  end

  # GET /recipehasingredients/1
  # GET /recipehasingredients/1.json
  def show
  end

  # GET /recipehasingredients/new
  def new
    @recipehasingredient = Recipehasingredient.new
  end

  # GET /recipehasingredients/1/edit
  def edit
  end

  # POST /recipehasingredients
  # POST /recipehasingredients.json
  def create
    @recipehasingredient = Recipehasingredient.new(recipehasingredient_params)

    respond_to do |format|
      if @recipehasingredient.save
        format.html { redirect_to @recipehasingredient, notice: 'Recipehasingredient was successfully created.' }
        format.json { render :show, status: :created, location: @recipehasingredient }
      else
        format.html { render :new }
        format.json { render json: @recipehasingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipehasingredients/1
  # PATCH/PUT /recipehasingredients/1.json
  def update
    respond_to do |format|
      if @recipehasingredient.update(recipehasingredient_params)
        format.html { redirect_to @recipehasingredient, notice: 'Recipehasingredient was successfully updated.' }
        format.json { render :show, status: :ok, location: @recipehasingredient }
      else
        format.html { render :edit }
        format.json { render json: @recipehasingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipehasingredients/1
  # DELETE /recipehasingredients/1.json
  def destroy
    @recipehasingredient.destroy
    respond_to do |format|
      format.html { redirect_to recipehasingredients_url, notice: 'Recipehasingredient was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipehasingredient
      @recipehasingredient = Recipehasingredient.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def recipehasingredient_params
      params.require(:recipehasingredient).permit(:recipe_id, :ingredient_id)
    end
end
