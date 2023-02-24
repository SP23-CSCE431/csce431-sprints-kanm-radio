class CreateShowHosts < ActiveRecord::Migration[7.0]
     def change
          create_table :show_hosts do |t|
               t.integer :showid
               t.integer :djid

               t.timestamps
          end
     end
end
