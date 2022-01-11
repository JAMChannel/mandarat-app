# == Schema Information
#
# Table name: infos
#
#  id          :bigint           not null, primary key
#  solved1     :boolean          default(FALSE)
#  solved2     :boolean          default(FALSE)
#  solved3     :boolean          default(FALSE)
#  solved4     :boolean          default(FALSE)
#  solved5     :boolean          default(FALSE)
#  solved6     :boolean          default(FALSE)
#  solved7     :boolean          default(FALSE)
#  solved8     :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  mandarat_id :bigint
#  user_id     :bigint
#
# Indexes
#
#  index_infos_on_mandarat_id  (mandarat_id)
#  index_infos_on_user_id      (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (mandarat_id => mandarats.id)
#  fk_rails_...  (user_id => users.id)
#
class Info < ApplicationRecord
  belongs_to :mandarat
end
