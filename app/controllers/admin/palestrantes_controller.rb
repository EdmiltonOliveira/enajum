class Admin::PalestrantesController < Admin::ApplicationController
  before_action :set_palestrante, only: [:show, :edit, :update, :destroy]

  # GET /admin/palestrantes
  # GET /admin/palestrantes.json
  def index
    @palestrantes = Palestrante.all
  end

  # GET /admin/palestrantes/1
  # GET /admin/palestrantes/1.json
  def show
  end

  # GET /admin/palestrantes/new
  def new
    @palestrante = Palestrante.new
  end

  # GET /admin/palestrantes/1/edit
  def edit
  end

  # POST /admin/palestrantes
  # POST /admin/palestrantes.json
  def create
    @palestrante = Palestrante.new(palestrante_params)

    respond_to do |format|
      if @palestrante.save
        format.html { redirect_to admin_palestrantes_path, notice: 'Palestrante criado com sucesso.' }
        format.json { render :show, status: :created, location: @palestrante }
      else
        format.html { render :new }
        format.json { render json: @palestrante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/palestrantes/1
  # PATCH/PUT /admin/palestrantes/1.json
  def update
    respond_to do |format|
      if @palestrante.update(palestrante_params)
        format.html { redirect_to admin_palestrantes_path, notice: 'Palestrante atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @palestrante }
      else
        format.html { render :edit }
        format.json { render json: @palestrante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/palestrantes/1
  # DELETE /admin/palestrantes/1.json
  def destroy
    @palestrante.destroy
    respond_to do |format|
      format.html { redirect_to admin_palestrantes_url, notice: 'Palestrante deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_palestrante
      @palestrante = Palestrante.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def palestrante_params
      params.require(:palestrante).permit(:nome, :telefones, :email, :instituicao)
    end
end
