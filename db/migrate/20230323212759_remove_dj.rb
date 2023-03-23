class RemoveDj < ActiveRecord::Migration[7.0]
  def change
    remove_column :members, :isdj
  end
end
