class CreateQuotes < ActiveRecord::Migration[5.2]
  def change
    create_table :quotes do |t|
      t.text :blurb
      t.text :contributor
      t.integer :category_id

      t.timestamps
    end
  end
end
