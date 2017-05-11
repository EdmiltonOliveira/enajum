class Admin::InscritosController < ApplicationController
  before_action :set_inscrito, only: [:show, :edit, :update, :destroy]

  # GET /admin/inscritos
  # GET /admin/inscritos.json
  def index
    @inscritos = Inscrito.all.order(:nome).paginate(:page => params[:page], :per_page => 10)
  end

  # GET /admin/inscritos/1
  # GET /admin/inscritos/1.json
  def show
  end

  # GET /admin/inscritos/new
  def new
    @inscrito = Inscrito.new
    @estados = ['AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO']
    @grupos = Grupo.all
  end

  # GET /admin/inscritos/1/edit
  def edit
    @estados = ['AC','AL','AP','AM','BA','CE','DF','ES','GO','MA','MT','MS','MG','PA','PB','PR','PE','PI','RJ','RN','RS','RO','RR','SC','SP','SE','TO']
    @grupos = Grupo.all
  end

  # POST /admin/inscritos
  # POST /admin/inscritos.json
  def create
    @inscrito = Inscrito.new(inscrito_params)

    if @inscrito.save
      flash[:notice] = "Inscrição efetuada com sucesso."
      if inscrito_params[:foto].blank?
        redirect_to [:admin,@inscrito]
      else
        render :action => 'crop'
      end
    else
      render :action => 'new'
    end

  end

  # PATCH/PUT /admin/inscritos/1
  # PATCH/PUT /admin/inscritos/1.json
  def update
    if @inscrito.update_attributes(inscrito_params)
      flash[:notice] = "Inscrição atualizada com sucesso."
      if inscrito_params[:foto].blank?
        redirect_to [:admin,@inscrito]
      else
        render :action => 'crop'
      end
    else
      render :action => 'edit'
    end
  end

  def update_crop
    if @inscrito.update_attributes(inscrito_params)
      flash[:notice] = "Inscrição atualizada com sucesso."
      redirect_to [:admin,@inscrito]
    else
      render :action => 'edit'
    end
  end

  # DELETE /admin/inscritos/1
  # DELETE /admin/inscritos/1.json
  def destroy
    @inscrito.destroy
    respond_to do |format|
      format.html { redirect_to admin_inscritos_url, notice: 'Inscrição deletada com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inscrito
      @inscrito = Inscrito.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inscrito_params
      params.require(:inscrito).permit(:nome, :email, :endereco, :complemento, :bairro, :cidade, :estado, :cep, :fone, :celular, :foto,
          :foto, 
          :foto_original_w, 
          :foto_original_h,
          :foto_crop_x, 
          :foto_crop_y, 
          :foto_crop_w, 
          :foto_crop_h,
          :foto_box_w, :foto_aspect)
    end
end
