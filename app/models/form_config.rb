class FormConfig < ApplicationRecord
  has_many :field_configs, -> { order(:position) }
end
