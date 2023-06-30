class CreateProgresses < ActiveRecord::Migration[6.0]
  def change
    create_table :progresses do |t|
      t.integer    :study,     null: false
      t.references :fight,     null: false, foreign_key: true
      t.timestamps
    end
  end
end
