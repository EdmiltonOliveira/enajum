# == Schema Information
#
# Table name: inscritos
#
#  id                :integer          not null, primary key
#  nome              :string(255)
#  endereco          :string(255)
#  complemento       :string(255)
#  bairro            :string(255)
#  cidade            :string(255)
#  estado            :string(255)
#  cep               :string(255)
#  fone              :string(255)
#  celular           :string(255)
#  instituicao       :string(255)
#  grupo_id          :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  foto_file_name    :string(255)
#  foto_content_type :string(255)
#  foto_file_size    :integer
#  foto_updated_at   :datetime
#  email             :string(255)
#
# Indexes
#
#  index_inscritos_on_grupo_id  (grupo_id)
#

class Inscrito < ApplicationRecord
	before_create :selecionaGrupo
	belongs_to :grupo
	
	has_attached_file :foto, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/assets/:style/missing.png"
  validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/         
	crop_attached_file :foto


	def selecionaGrupo
		gt = Grupo.order(:quantidade).first
		self.grupo = gt
		gt.quantidade = gt.quantidade + 1
		gt.save
	end
end
