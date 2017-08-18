class AddPageRefToPageParts < ActiveRecord::Migration[5.0]
  def change
    add_reference :page_parts, :page, foreign_key: true
  end
end
