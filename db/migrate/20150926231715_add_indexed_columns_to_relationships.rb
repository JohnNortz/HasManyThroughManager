class AddIndexedColumnsToRelationships < ActiveRecord::Migration
  def change
    add_column :relationships, :buisness, :integer, index: true
    add_column :relationships, :person, :integer, index: true
  end
end
