class FatosController < ApplicationController
  before_action :set_fato, only: [:show, :edit, :update, :destroy]

  # GET /fatos
  # GET /fatos.json
  def index
    @fatos = Fato.all
  end

  # GET /fatos/1
  # GET /fatos/1.json
  def show
  end

  # GET /fatos/new
  def new
    @fato = Fato.new
  end

  # GET /fatos/1/edit
  def edit
  end

  # POST /fatos
  # POST /fatos.json
  def create
    @fato = Fato.new(fato_params)

    respond_to do |format|
      if @fato.save
        format.html { redirect_to @fato, notice: 'Fato was successfully created.' }
        format.json { render :show, status: :created, location: @fato }
      else
        format.html { render :new }
        format.json { render json: @fato.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fatos/1
  # PATCH/PUT /fatos/1.json
  def update
    respond_to do |format|
      if @fato.update(fato_params)
        format.html { redirect_to @fato, notice: 'Fato was successfully updated.' }
        format.json { render :show, status: :ok, location: @fato }
      else
        format.html { render :edit }
        format.json { render json: @fato.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fatos/1
  # DELETE /fatos/1.json
  def destroy
    @fato.destroy
    respond_to do |format|
      format.html { redirect_to fatos_url, notice: 'Fato was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fato
      @fato = Fato.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fato_params
      params.require(:fato).permit(:statusFato, :dataFinalizacao, :logColaborador)
    end
end
