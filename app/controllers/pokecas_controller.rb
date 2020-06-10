class PokecasController < ApplicationController
  before_action :set_pokeca, only: [:show, :edit, :update, :destroy]

  # GET /pokecas
  # GET /pokecas.json
  def index
    @pokecas = Pokeca.all.order(id: "DESC")
  end

  # GET /pokecas/1
  # GET /pokecas/1.json
  def show
  end

  # GET /pokecas/new
  def new
    @pokeca = Pokeca.new
  end

  # GET /pokecas/1/edit
  def edit
  end

  # POST /pokecas
  # POST /pokecas.json
  def create
    @pokeca = Pokeca.new(pokeca_params)

    respond_to do |format|
      if @pokeca.save
        format.html { redirect_to @pokeca, notice: 'Pokeca was successfully created.' }
        format.json { render :show, status: :created, location: @pokeca }
      else
        format.html { render :new }
        format.json { render json: @pokeca.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pokecas/1
  # PATCH/PUT /pokecas/1.json
  def update
    respond_to do |format|
      if @pokeca.update(pokeca_params)
        format.html { redirect_to @pokeca, notice: 'Pokeca was successfully updated.' }
        format.json { render :show, status: :ok, location: @pokeca }
      else
        format.html { render :edit }
        format.json { render json: @pokeca.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pokecas/1
  # DELETE /pokecas/1.json
  def destroy
    @pokeca.destroy
    respond_to do |format|
      format.html { redirect_to pokecas_url, notice: 'Pokeca was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pokeca
      @pokeca = Pokeca.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pokeca_params
      params.require(:pokeca).permit(:image, :name, :detail, :price, :box_id, :genre_id, :rare_id)
    end
end
