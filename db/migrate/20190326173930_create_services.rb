class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.integer :service_type
      t.string :description
      t.string :hours

      t.timestamps
    end
  end
end
