class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
      t.string :name
      t.string :age
      t.string :number
      t.string :home
      t.string :hobbies
      
      t.timestamps
    end
  end
end
