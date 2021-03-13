class DynamicForm
  include ActiveModel::Model

  attr_reader :field_configs, :model

  def initialize(form_config, model: nil, attributes: {})
    @field_configs = form_config.field_configs
    @model = model

    set_accessors
    super(attributes)
    set_validations
  end

  def save(options = {})
    unless options[:validate] == false
      return false if invalid?
    end

    model.save(options)
  end

  def save!(options = {})
    save(options) || raise(ActiveRecord::RecordNotSaved.new("Failed to save the form", self))
  end

  private

  def set_accessors
    field_configs.each do |field_config|
      singleton_class.attr_accessor(field_config.name)
    end
  end

  def set_validations
    field_configs.each do |field_config|
      singleton_class.validates(field_config.name, presence: true) if field_config.required?
    end
  end
end
