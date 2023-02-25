class UpdateMember < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :dj, :boolean
  end
end
