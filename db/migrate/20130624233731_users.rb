class Users < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :password_digest
      t.boolean :teacher, default: false
    end
  end
end
