class FotosController < ApplicationController
  def index
  	@fotos = Admin::Foto.all
  end
end
