class InscritosController < ApplicationController
  def index
  	@inscritos = Inscrito.all.order(:nome).paginate(:page => params[:page], :per_page => 5)
  end
end
