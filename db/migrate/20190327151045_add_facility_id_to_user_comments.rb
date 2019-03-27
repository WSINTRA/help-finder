class AddFacilityIdToUserComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :user_comments, :facility, foreign_key: true
  end
end
