class CreateBugTable < ActiveRecord::Migration[6.0]
    def change
        create_table :bugs do |t|
            t.string :summ
            t.text :desc
            t.string :attention
            t.string :priority
            t.string :uniq_id

            t.timestamps
        end
    end
end