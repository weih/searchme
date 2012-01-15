class AddUserIdToSearchbars < ActiveRecord::Migration
  def change
    add_column :searchbars, :user_id, :integer
  end
end
