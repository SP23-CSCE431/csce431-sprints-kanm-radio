class ChangeColumnDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :members, :dj, nil
  end
end
