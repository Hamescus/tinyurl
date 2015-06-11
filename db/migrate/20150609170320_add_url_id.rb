class AddUrlId < ActiveRecord::Migration
  def change
      add_column :links, :secure_url, :string, default: ""
  end
end
