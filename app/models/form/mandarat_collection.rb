class Form::MandaratCollection
  include ActiveModel::Model

  DEFAULT_ITEM_COUNT = 4
  attr_accessor :mandarats, :title, :user_id

  # def initialize(attributes = {})
  #   super attributes
  #   self.memos = FORM_COUNT.times.map { Memo.new() } unless self.memos.present?
  # end

  def initialize(attributes = {})
    # binding.pry
    super attributes
    self.mandarats = DEFAULT_ITEM_COUNT.times.map { Mandarat.new } unless mandarats.present?
  end

  def logintext; end

  # 上でsuper attributesとしているので必要
  def mandarats_attributes=(attributes)
    # binding.pry
    self.mandarats = attributes.map do |_, mandarats_attributes|
      Mandarat.new(mandarats_attributes)
      # binding.pry
    end
  end

  def save
    # 実際にやりたいことはこれだけ
    # self.mandarats.map(&:save!)
    ActiveRecord::Base.transaction do
      MandaratTitle.create(title: title, user_id: user_id)
    end

    # 複数件全て保存できた場合のみ実行したいので、transactionを使用する
    Mandarat.transaction do
      # binding.pry
      mandarats.map(&:save!)
    end
    true
  rescue StandardError => e
    false
  end
end
