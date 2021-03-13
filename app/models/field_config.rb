class FieldConfig < ApplicationRecord
  belongs_to :form_config

  enum field_type: {
    text_field: 0,
    text_area: 1,
    select: 2
  }, _suffix: true
end
