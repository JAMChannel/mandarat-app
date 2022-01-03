class Title < ApplicationRecord
  belongs_to :user
  # has_many :mandarats, dependent: :destroy
end
