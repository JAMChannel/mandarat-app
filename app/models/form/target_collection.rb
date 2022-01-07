class Form::TargetCollection
  include ActiveModel::Model

  DEFAULT_ITEM_COUNT = 4
  attr_accessor :targts

  def initialize(attributes = {})
    # binding.pry
    super attributes
    self.targts = DEFAULT_ITEM_COUNT.times.map { Target.new } unless self.targts.present?
  end

  def targts_attributes=(attributes)
    # binding.pry
    self.targts = attributes.map do |_, targts_attributes|
      Target.new(targts_attributes)
      # binding.pry
    end
  end

  def save
    Target.transaction do
      # binding.pry
      self.targts.map(&:save!)
    end
      return true
    rescue => e
      return false
  end
end