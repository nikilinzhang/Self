class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :FirstName
      t.string :LastName
      t.string :Email
      t.string :Phone
      t.string :linkedin
      t.string :title
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
