class AddUsersAssociationToEvents < ActiveRecord::Migration[5.1]
  def self.up
    add_column :events, :user_id, :integer
    add_index 'events', ['user_id'], :name => 'index_user_id' 
end

def self.down
    remove_column :events, :user_id
end
end
