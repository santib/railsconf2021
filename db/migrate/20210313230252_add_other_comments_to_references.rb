class AddOtherCommentsToReferences < ActiveRecord::Migration[6.1]
  def change
    add_column :references, :other_comments, :text, array: true
  end
end
