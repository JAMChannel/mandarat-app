class Form::TargetCollection
  include ActiveModel::Model

  DEFAULT_ITEM_COUNT = 4
  attr_accessor :targets

  def initialize(attributes = {})
    # binding.pry
    super attributes
    self.targets = DEFAULT_ITEM_COUNT.times.map { Target.new } unless targets.present?
  end

  def targets_attributes=(attributes)
    # binding.pry
    self.targets = attributes.map do |_, targets_attributes|
      Target.new(targets_attributes)
      # binding.pry
    end
  end

  def save
    Target.transaction do
      # binding.pry
      targets.map(&:save!)
    end
    true
      rescue => e
    false
  end
end
