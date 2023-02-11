class CreateCalendars < ActiveRecord::Migration[7.0]
  def change
    create_table :calendars do |t|
      t.integer :show_id
      t.string :timeslot
      t.integer :active

      t.timestamps
    end
  end
end
