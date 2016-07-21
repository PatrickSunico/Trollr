class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :limit => 40
      t.string :email , :default => "", :null => false
      t.string :password_digest, :limit => 40

      t.timestamps null: false
    end
  end
end
