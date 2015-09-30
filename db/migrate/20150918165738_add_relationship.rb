class AddRelationship < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :person_id
      t.integer :buisness_id
      t.string :relation
      t.string :date_added

      t.timestamps null: false
    end
  end
end
