class CreateChallenges < ActiveRecord::Migration
  def change
    create_table :challenges do |t|
      t.string :title
      t.text :body
      t.text :input_format
      t.text :output_format
      t.text :constraints
      t.integer :subdomain_id
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
