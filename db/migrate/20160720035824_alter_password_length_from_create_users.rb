class AlterPasswordLengthFromCreateUsers < ActiveRecord::Migration
  def up
    change_column("users","password_digest", :string)
  end

  def down
     change_column("users", "password_digest", :string, :limit => 40)
  end
end
