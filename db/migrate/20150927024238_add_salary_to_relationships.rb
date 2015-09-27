class AddSalaryToRelationships < ActiveRecord::Migration
  def change
    add_column :relationships, :salary, :integer
    remove_column :people, :salary, :integer
  end
end
