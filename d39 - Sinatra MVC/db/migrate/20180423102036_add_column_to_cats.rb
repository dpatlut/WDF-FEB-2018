class AddColumnToCats < ActiveRecord::Migration[5.2]
  def change
    add_column :cats, :owner_id, :integer
  end
end
