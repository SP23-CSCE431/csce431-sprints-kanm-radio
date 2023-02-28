class AddSpeciality < ActiveRecord::Migration[7.0]
  def change
    add_column :shows, :specialty, :boolean, default: false
  end
end
