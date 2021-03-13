class CreateReferences < ActiveRecord::Migration[6.1]
  def change
    create_table :references do |t|
      t.text :strengths_and_weaknesses, null: false
      t.integer :rating

      t.timestamps
    end
  end
end
