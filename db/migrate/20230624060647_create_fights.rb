class CreateFights < ActiveRecord::Migration[6.0]
  def change
    create_table :fights do |t|
      t.string     :title,    null: false
      t.integer    :unit_id,  null: false
      t.integer    :gool,     null: false
      t.references :user,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
