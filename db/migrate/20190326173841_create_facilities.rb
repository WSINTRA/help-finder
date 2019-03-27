class CreateFacilities < ActiveRecord::Migration[5.2]
  def change
    create_table :facilities do |t|
      t.string :name
      t.string :address
      t.string :map_link
      t.timestamps
    end
  end
end
