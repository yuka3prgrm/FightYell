class CreateYells < ActiveRecord::Migration[6.0]
  def change
    create_table :yells do |t|
      t.string  :friend,      null: false
      t.string  :content,     null: false
      t.references :fight,    null: false, foreign_key: true
      t.timestamps
    end
  end
end
