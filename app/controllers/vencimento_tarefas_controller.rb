class VencimentoTarefasController < ApplicationController
  before_action :set_vencimento_tarefa, only: [:show, :edit, :update, :destroy]

  # GET /vencimento_tarefas
  # GET /vencimento_tarefas.json
  def index
    @vencimento_tarefas = VencimentoTarefa.all
  end

  # GET /vencimento_tarefas/1
  # GET /vencimento_tarefas/1.json
  def show
  end

  # GET /vencimento_tarefas/new
  def new
    @vencimento_tarefa = VencimentoTarefa.new
  end

  # GET /vencimento_tarefas/1/edit
  def edit
  end

  # POST /vencimento_tarefas
  # POST /vencimento_tarefas.json
  def create
    @vencimento_tarefa = VencimentoTarefa.new(vencimento_tarefa_params)

    respond_to do |format|
      if @vencimento_tarefa.save
        format.html { redirect_to @vencimento_tarefa, notice: 'Vencimento tarefa was successfully created.' }
        format.json { render :show, status: :created, location: @vencimento_tarefa }
      else
        format.html { render :new }
        format.json { render json: @vencimento_tarefa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vencimento_tarefas/1
  # PATCH/PUT /vencimento_tarefas/1.json
  def update
    respond_to do |format|
      if @vencimento_tarefa.update(vencimento_tarefa_params)
        format.html { redirect_to @vencimento_tarefa, notice: 'Vencimento tarefa was successfully updated.' }
        format.json { render :show, status: :ok, location: @vencimento_tarefa }
      else
        format.html { render :edit }
        format.json { render json: @vencimento_tarefa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vencimento_tarefas/1
  # DELETE /vencimento_tarefas/1.json
  def destroy
    @vencimento_tarefa.destroy
    respond_to do |format|
      format.html { redirect_to vencimento_tarefas_url, notice: 'Vencimento tarefa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vencimento_tarefa
      @vencimento_tarefa = VencimentoTarefa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vencimento_tarefa_params
      params.require(:vencimento_tarefa).permit(:dataVencimento)
    end
end
