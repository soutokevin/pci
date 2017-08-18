class CreateContents < ActiveRecord::Migration[5.0]
  def change
    create_table :contents do |t|
      t.text :body
      t.string :title
      t.integer :order

      t.timestamps
    end
  end
end
