class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.integer "saleperson_id"
      t.integer "contact_id"
      t.string "note"

      t.timestamps
    end
  end
end
