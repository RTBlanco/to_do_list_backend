class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.references :category, null: false, foreign_key: true
      t.string :title
      t.string :description

      t.timestamps
    end
  end
end
