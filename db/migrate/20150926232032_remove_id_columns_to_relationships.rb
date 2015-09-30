class RemoveIdColumnsToRelationships < ActiveRecord::Migration
  def change
    remove_column :relationships, :person_id, :integer
    remove_column :relationships, :buisness_id, :integer
  end
end
