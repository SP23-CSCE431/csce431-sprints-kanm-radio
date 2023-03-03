class CreateDjs < ActiveRecord::Migration[7.0]
  def change
    create_table :djs do |t|
      t.integer :dj_id
      t.integer :member_id
      t.string :speciality
      t.string :picture

      t.timestamps
    end
  end
end
