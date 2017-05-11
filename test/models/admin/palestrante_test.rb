# == Schema Information
#
# Table name: admin_palestrantes
#
#  id          :integer          not null, primary key
#  nome        :string(255)
#  telefones   :string(255)
#  email       :string(255)
#  instituicao :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class Admin::PalestranteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
