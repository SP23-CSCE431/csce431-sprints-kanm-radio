class ChangeDj < ActiveRecord::Migration[7.0]
  def change
    rename_column :members, :dj, :isdj
  end
end
