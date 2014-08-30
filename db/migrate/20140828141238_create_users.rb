class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :provider, null: false
      t.integer :uid, null: false
      t.string :access_token, null: false
      t.string :email, null: false
      t.timestamps
    end
    add_index :users, [:uid, :provider], unique: true
  end
end
