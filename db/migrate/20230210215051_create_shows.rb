class CreateShows < ActiveRecord::Migration[7.0]
  def change
    create_table :shows do |t|
      t.string :showname
      t.string :showdescription

      t.timestamps
    end
  end
end
