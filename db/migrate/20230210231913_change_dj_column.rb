class ChangeDjColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :show_hosts, :dj_id, :member_id
  end
end
