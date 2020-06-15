class RaresController < ApplicationController
  before_action :set_rare, only: [:show, :edit, :update, :destroy]

  # GET /rares
  # GET /rares.json
  def index
    @rares = Rare.all
  end

  # GET /rares/1
  # GET /rares/1.json
  def show
  end

  # GET /rares/new
  def new
    redirect_to root_path
    @rare = Rare.new
  end

  # GET /rares/1/edit
  def edit
    redirect_to root_path
  end

  # POST /rares
  # POST /rares.json
  def create
    @rare = Rare.new(rare_params)

    respond_to do |format|
      if @rare.save
        format.html { redirect_to @rare, notice: 'Rare was successfully created.' }
        format.json { render :show, status: :created, location: @rare }
      else
        format.html { render :new }
        format.json { render json: @rare.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rares/1
  # PATCH/PUT /rares/1.json
  def update
    respond_to do |format|
      if @rare.update(rare_params)
        format.html { redirect_to @rare, notice: 'Rare was successfully updated.' }
        format.json { render :show, status: :ok, location: @rare }
      else
        format.html { render :edit }
        format.json { render json: @rare.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rares/1
  # DELETE /rares/1.json
  def destroy
    @rare.destroy
    respond_to do |format|
      format.html { redirect_to rares_url, notice: 'Rare was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rare
      @rare = Rare.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rare_params
      params.require(:rare).permit(:rarity)
    end
end
