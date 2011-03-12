class AddAdminUser < ActiveRecord::Migration

  def self.up
    User.find_or_create_by_name({ :name => "admin", :password => 'secret'})
  end

  def self.down
  end
end
