# == Schema Information
#
# Table name: targets
#
#  id          :bigint           not null, primary key
#  name        :string(255)      not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  mandarat_id :bigint
#  user_id     :bigint
#
# Indexes
#
#  index_targets_on_mandarat_id  (mandarat_id)
#  index_targets_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (mandarat_id => mandarats.id)
#  fk_rails_...  (user_id => users.id)
#
class Target < ApplicationRecord
  belongs_to :mandarat
end
