# == Schema Information
#
# Table name: portfolio_tags
#
#  id           :bigint           not null, primary key
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  portfolio_id :bigint           not null
#  tag_id       :bigint           not null
#
# Indexes
#
#  index_portfolio_tags_on_portfolio_id  (portfolio_id)
#  index_portfolio_tags_on_tag_id        (tag_id)
#
# Foreign Keys
#
#  fk_rails_...  (portfolio_id => portfolios.id)
#  fk_rails_...  (tag_id => tags.id)
#
class PortfolioTag < ApplicationRecord
  belongs_to :portfolio
  belongs_to :tag
end
