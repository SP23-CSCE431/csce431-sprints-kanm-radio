class DropCalendar < ActiveRecord::Migration[7.0]
  def change
    drop_table :calendars
    add_column :shows, :timeslot, :string
    add_column :shows, :active, :integer, default: 0
  end
end
