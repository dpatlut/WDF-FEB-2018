class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :name
      t.integer :age
      t.integer :years_experiance
    end
  end
end
