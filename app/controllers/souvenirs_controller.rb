class SouvenirsController < ApplicationController
  before_action :set_souvenir, only: %i[ show edit update destroy ]

  # GET /souvenirs or /souvenirs.json
  def index
    @souvenirs = Souvenir.all
  end

  # GET /souvenirs/1 or /souvenirs/1.json
  def show
  end

  # GET /souvenirs/new
  def new
    @souvenir = Souvenir.new
  end

  # GET /souvenirs/1/edit
  def edit
  end

  # POST /souvenirs or /souvenirs.json
  def create
    @souvenir = Souvenir.new(souvenir_params)

    respond_to do |format|
      if @souvenir.save
        format.html { redirect_to souvenir_url(@souvenir), notice: "Souvenir was successfully created." }
        format.json { render :show, status: :created, location: @souvenir }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @souvenir.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /souvenirs/1 or /souvenirs/1.json
  def update
    respond_to do |format|
      if @souvenir.update(souvenir_params)
        format.html { redirect_to souvenir_url(@souvenir), notice: "Souvenir was successfully updated." }
        format.json { render :show, status: :ok, location: @souvenir }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @souvenir.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /souvenirs/1 or /souvenirs/1.json
  def destroy
    @souvenir.destroy

    respond_to do |format|
      format.html { redirect_to souvenirs_url, notice: "Souvenir was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_souvenir
      @souvenir = Souvenir.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def souvenir_params
      params.require(:souvenir).permit(:title, :timemarker, :feeling, :description)
    end
end
