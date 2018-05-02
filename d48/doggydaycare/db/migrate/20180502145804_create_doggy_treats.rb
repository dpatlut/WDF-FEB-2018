class CreateDoggyTreats < ActiveRecord::Migration[5.1]
  def change
    create_table :doggy_treats do |t|
      t.string :brand
      t.integer :price
      t.integer :owner_id

      t.timestamps
    end
  end
end
