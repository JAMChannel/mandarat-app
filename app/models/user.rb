# == Schema Information
#
# Table name: users
#
#  id               :bigint           not null, primary key
#  admin            :boolean          default(FALSE)
#  crypted_password :string(255)
#  email            :string(255)      not null
#  salt             :string(255)
#  username         :string(255)      not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
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
  has_one :mandarat_title,  dependent: :destroy
end
