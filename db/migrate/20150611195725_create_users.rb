class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password_digest
      t.integer :gender, dafault: 0
      t.string :name
      t.datetime :birthdate
      t.text :bio
      t.timestamps null: false
    end
  end
end
