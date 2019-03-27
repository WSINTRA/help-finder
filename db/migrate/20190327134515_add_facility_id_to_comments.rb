class AddFacilityIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :facility, foreign_key: true
  end
end
