class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :long_url, null: false, default: ""
      t.string :secure_url, default: ""

      t.timestamps null: false
    end
  end
end
