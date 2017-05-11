# == Schema Information
#
# Table name: fotos
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

class Foto < ApplicationRecord
	has_attached_file :foto, styles: { medium: "800x450>", thumb: "320x180>" }, default_url: "/assets/:style/missing.png"
  validates_attachment_content_type :foto, content_type: /\Aimage\/.*\z/
end
