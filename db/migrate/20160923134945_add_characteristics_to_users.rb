class AddCharacteristicsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :dry_weight, :float
    add_column :users, :diuretic_name, :string
    add_column :users, :diuretic_dose, :float
    add_column :users, :cell_number, :string
  end
end
