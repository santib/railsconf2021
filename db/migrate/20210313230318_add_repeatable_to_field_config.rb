class AddRepeatableToFieldConfig < ActiveRecord::Migration[6.1]
  def change
    add_column :field_configs, :repeatable, :boolean, null: false, default: false
  end
end
