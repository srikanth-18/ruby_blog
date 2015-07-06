class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :challenges, :author_id, :admin_user_id
  end
end
