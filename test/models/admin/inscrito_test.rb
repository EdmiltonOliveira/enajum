# == Schema Information
#
# Table name: admin_inscritos
#
#  id          :integer          not null, primary key
#  nome        :string(255)
#  endereco    :string(255)
#  complemento :string(255)
#  bairro      :string(255)
#  cidade      :string(255)
#  estado      :string(255)
#  cep         :string(255)
#  fone        :string(255)
#  celular     :string(255)
#  instituicao :string(255)
#  grupo_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
# Indexes
#
#  index_admin_inscritos_on_grupo_id  (grupo_id)
#

require 'test_helper'

class Admin::InscritoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
