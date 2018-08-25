class CreateEducations < ActiveRecord::Migration[5.0]
  def change
    create_table :educations do |t|
      t.string :Degree
      t.string :School
      t.string :Range
      t.string :Description

      t.timestamps
    end
  end
end
