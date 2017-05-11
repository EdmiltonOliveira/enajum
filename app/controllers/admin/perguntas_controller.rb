class Admin::PerguntasController < ApplicationController
  before_action :set_pergunta, only: [:show, :edit, :update, :destroy]

  # GET /admin/perguntas
  # GET /admin/perguntas.json
  def index
    @perguntas = Pergunta.all
  end

  # GET /admin/perguntas/1
  # GET /admin/perguntas/1.json
  def show
  end

  # GET /admin/perguntas/new
  def new
    @pergunta = Pergunta.new
  end

  # GET /admin/perguntas/1/edit
  def edit
  end

  # POST /admin/perguntas
  # POST /admin/perguntas.json
  def create
    @pergunta = Pergunta.new(pergunta_params)

    respond_to do |format|
      if @pergunta.save
        format.html { redirect_to admin_perguntas_path, notice: 'Pergunta criada com sucesso.' }
        format.json { render :show, status: :created, location: @pergunta }
      else
        format.html { render :new }
        format.json { render json: @pergunta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/perguntas/1
  # PATCH/PUT /admin/perguntas/1.json
  def update
    respond_to do |format|
      if @pergunta.update(pergunta_params)
        format.html { redirect_to admin_perguntas_path, notice: 'Pergunta atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @pergunta }
      else
        format.html { render :edit }
        format.json { render json: @pergunta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/perguntas/1
  # DELETE /admin/perguntas/1.json
  def destroy
    @pergunta.destroy
    respond_to do |format|
      format.html { redirect_to perguntas_url, notice: 'Pergunta deletada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pergunta
      @pergunta = Pergunta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def pergunta_params
      params.require(:pergunta).permit(:pergunta)
    end
end
