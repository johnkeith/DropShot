class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :dropbox_access_token
      t.integer :dropbox_user_id
      t.timestamps
    end
  end
end
