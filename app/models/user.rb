class User < ApplicationRecord
  authenticates_with_sorcery!

  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true

  # new_record?はobjectが保存されていないときだけtrue
  # if: -> については、条件付きバリデーションのオプション特定の条件でバリデーションを行なうべきである場合に使う。(Railsガイド参照)
  validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
  validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
  validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
  # passwordというDBに存在しない仮想的な属性(virtual attributes)が追加される。これがないと保存できない

  has_many :mandarats, dependent: :destroy
  # has_many :mandarat_titles, dependent: :destroy
  has_one :title,  dependent: :destroy
end
