# == Schema Information
#
# Table name: palestrantes
#
#  id          :integer          not null, primary key
#  nome        :string(255)
#  telefones   :string(255)
#  email       :string(255)
#  instituicao :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Palestrante < ApplicationRecord
end
