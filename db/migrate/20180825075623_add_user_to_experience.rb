class AddUserToExperience < ActiveRecord::Migration[5.0]
  def change
    add_reference :experiences, :user, foreign_key: true
  end
end
