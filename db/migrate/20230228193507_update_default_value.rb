class UpdateDefaultValue < ActiveRecord::Migration[7.0]
  def change
    change_column_default :members, :dj, false
  end
end
