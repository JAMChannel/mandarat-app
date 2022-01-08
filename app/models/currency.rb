# == Schema Information
#
# Table name: currencies
#
#  id              :bigint           not null, primary key
#  currency_symbol :string(255)
#  description     :string(255)
#  max_supply      :bigint
#  name            :string(255)
#  slug            :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class Currency < ApplicationRecord
end
