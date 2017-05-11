class GruposController < ApplicationController
  def index
  	@grupos = Grupo.order(nome: :asc)
  end
end
