class DropSubdomainsTable < ActiveRecord::Migration

def up
    drop_table :subdomains
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
