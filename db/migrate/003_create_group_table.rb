class CreateGroupTable < ActiveRecord::Migration[6.0]
    def change
        create_table :group do |t|
            t.string :groupid
            t.string :groupname
            t.string :groupkey

            t.timestamps
        end
    end
end