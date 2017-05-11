# == Schema Information
#
# Table name: grupos
#
#  id         :integer          not null, primary key
#  nome       :string(255)
#  quantidade :integer          default("0"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Grupo < ApplicationRecord
	has_many :inscritos
	has_many :respostas, inverse_of: :grupo

	accepts_nested_attributes_for :respostas, reject_if: :all_blank, allow_destroy: true

	def name
		self.nome
	end
	
end
