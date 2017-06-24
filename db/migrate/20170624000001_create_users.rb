class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :mail
      t.string :password_digest, null: false
      t.string :encrypted_remember_token, null: true

      t.index :mail
      t.index :encrypted_remember_token

      t.timestamps
    end
  end
end
