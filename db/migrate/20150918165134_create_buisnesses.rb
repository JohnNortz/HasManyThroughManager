class CreateBuisnesses < ActiveRecord::Migration
  def change
    create_table :buisnesses do |t|
      t.string :name
      t.string :location
      t.string :products

      t.timestamps null: false
    end
  end
end
