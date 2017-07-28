class CreatePageParts < ActiveRecord::Migration[5.0]
  def change
    create_table :page_parts do |t|
      t.string :name
      t.boolean :allow_creatable

      t.timestamps
    end
  end
end
