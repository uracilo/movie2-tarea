class AnimalesController < ApplicationController
  before_action :set_animale, only: [:show, :edit, :update, :destroy]

  # GET /animales
  # GET /animales.json
  def index
    @animales = Animale.all
  end

  # GET /animales/1
  # GET /animales/1.json
  def show
  end

  # GET /animales/new
  def new
    @animale = Animale.new
  end

  # GET /animales/1/edit
  def edit
  end

  # POST /animales
  # POST /animales.json
  def create
    @animale = Animale.new(animale_params)

    respond_to do |format|
      if @animale.save
        format.html { redirect_to @animale, notice: 'Animale was successfully created.' }
        format.json { render :show, status: :created, location: @animale }
      else
        format.html { render :new }
        format.json { render json: @animale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animales/1
  # PATCH/PUT /animales/1.json
  def update
    respond_to do |format|
      if @animale.update(animale_params)
        format.html { redirect_to @animale, notice: 'Animale was successfully updated.' }
        format.json { render :show, status: :ok, location: @animale }
      else
        format.html { render :edit }
        format.json { render json: @animale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animales/1
  # DELETE /animales/1.json
  def destroy
    @animale.destroy
    respond_to do |format|
      format.html { redirect_to animales_url, notice: 'Animale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animale
      @animale = Animale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animale_params
      params.require(:animale).permit(:name, :scientificname)
    end
end
