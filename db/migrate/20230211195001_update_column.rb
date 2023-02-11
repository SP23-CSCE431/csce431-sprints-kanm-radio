class UpdateColumn < ActiveRecord::Migration[7.0]
  def change
    change_column_default :calendars, :active, 0
  end
end
