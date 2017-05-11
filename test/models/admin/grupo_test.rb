# == Schema Information
#
# Table name: admin_grupos
#
#  id         :integer          not null, primary key
#  nome       :string(255)
#  quantidade :integer          default("0"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class Admin::GrupoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
