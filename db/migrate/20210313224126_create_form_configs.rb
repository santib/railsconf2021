class CreateFormConfigs < ActiveRecord::Migration[6.1]
  def change
    create_table :form_configs do |t|
      t.string :title

      t.timestamps
    end
  end
end
