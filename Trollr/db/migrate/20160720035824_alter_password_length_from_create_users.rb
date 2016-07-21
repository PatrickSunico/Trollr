class AlterPasswordLengthFromCreateUsers < ActiveRecord::Migration
  def up
    change_column("users","password_digest", :string)
  end

  def down
    # t.string :password_digest, :limit => 40
    change_column("users", "password_digest", :string, :limit => 40)
  end
end
