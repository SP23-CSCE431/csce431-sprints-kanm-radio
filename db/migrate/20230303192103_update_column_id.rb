class UpdateColumnId < ActiveRecord::Migration[7.0]
  def change
    remove_column :djs, :dj_id
    remove_column :officers, :officer_id
  end
end
