class AddPagePartRefToContent < ActiveRecord::Migration[5.0]
  def change
    add_reference :contents, :page_part, foreign_key: true
  end
end
