class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.string :Title
      t.string :Company
      t.string :Range
      t.string :Description

      t.timestamps
    end
  end
end
