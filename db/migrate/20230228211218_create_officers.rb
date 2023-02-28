class CreateOfficers < ActiveRecord::Migration[7.0]
  def change
    create_table :officers do |t|
      t.integer :officer_id
      t.integer :member_id
      t.string :positionTitle
      t.string :picture

      t.timestamps
    end
  end
end
