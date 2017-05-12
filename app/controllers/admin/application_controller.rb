class Admin::ApplicationController < ApplicationController
	before_action :testar_permissao

protected

	def testar_permissao
		redirect_to root_path if !current_user.admin
	end

end
