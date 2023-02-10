class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :netid
      t.string :firstname
      t.string :lastname
      t.string :uin
      t.string :email
      t.string :phone
      t.string :shirt
      t.integer :strikes, default: 0  
      t.integer :points, default: 0

      t.timestamps
    end
  end
end
