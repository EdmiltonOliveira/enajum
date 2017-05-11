# == Schema Information
#
# Table name: perguntas
#
#  id         :integer          not null, primary key
#  pergunta   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pergunta < ApplicationRecord
	has_many :respostas

	def name
		self.pergunta
	end
end
