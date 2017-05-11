# == Schema Information
#
# Table name: respostas
#
#  id          :integer          not null, primary key
#  pergunta_id :integer
#  grupo_id    :integer
#  resposta    :text(65535)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_respostas_on_grupo_id     (grupo_id)
#  index_respostas_on_pergunta_id  (pergunta_id)
#

class Resposta < ApplicationRecord
  belongs_to :pergunta
  belongs_to :grupo
end
