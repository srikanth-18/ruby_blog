class CreateChallengecomments < ActiveRecord::Migration
  def change
    create_table :challengecomments do |t|
      t.string :name
      t.string :email
      t.text :body
      t.references :challenge, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
