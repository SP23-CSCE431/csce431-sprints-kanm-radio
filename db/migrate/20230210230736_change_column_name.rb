class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :show_hosts, :showid, :show_id
    rename_column :show_hosts, :djid, :dj_id
  end
end
