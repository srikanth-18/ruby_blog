class AddDetailToAdminUser < ActiveRecord::Migration
  def change
    add_column :admin_users, :detail, :text
  end
end
