# == Schema Information
#
# Table name: videos
#
#  id         :integer          not null, primary key
#  descricao  :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Video < ApplicationRecord
end
