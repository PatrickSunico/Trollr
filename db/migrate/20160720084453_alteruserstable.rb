class Alteruserstable < ActiveRecord::Migration
  def up
    # add_index('users', :username,{:unique => true})
    # add_index('users', :email, {:unique => true})
    # remove_index('users', :username)
    # remove_index('users', :email)
  end

  def down
    remove_index('users', :username)
    remove_index('users', :email)
    # remove_index('users', :username, :unique => true)
    # remove_index('users', :email, :unique => true)
    # change_column('users', :username, :limit => 40)
    # change_column('users', :email, :default => "", :null => false)
  end
end
