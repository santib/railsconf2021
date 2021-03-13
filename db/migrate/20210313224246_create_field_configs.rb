class CreateFieldConfigs < ActiveRecord::Migration[6.1]
  def change
    create_table :field_configs do |t|
      t.references :form_config, null: false, foreign_key: true
      t.string :name, null: false
      t.string :label
      t.integer :field_type, null: false
      t.text :options, array: true
      t.integer :position
      t.boolean :required, null: false

      t.timestamps
    end
  end
end
