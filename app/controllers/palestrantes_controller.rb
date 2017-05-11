class PalestrantesController < ApplicationController
  def index
  	@palestrantes = Palestrante.all
  end
end
