class AddIdColumnsToRelationships < ActiveRecord::Migration
  def change
    add_column :relationships, :buisness_id, :integer, index: true
    add_column :relationships, :person_id, :integer, index: true
  end
end
