# == Schema Information
#
# Table name: admin_fotos
#
#  id                :integer          not null, primary key
#  descricao         :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  foto_file_name    :string(255)
#  foto_content_type :string(255)
#  foto_file_size    :integer
#  foto_updated_at   :datetime
#

require 'test_helper'

class Admin::FotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
