# == Schema Information
#
# Table name: mandarats
#
#  id         :bigint           not null, primary key
#  name       :string(255)      not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
#
# Indexes
#
#  index_mandarats_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Mandarat < ApplicationRecord
  belongs_to :user
  has_many :targets, dependent: :destroy
  has_many :infos, dependent: :destroy

  validates :name, presence: true
end
