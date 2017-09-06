class AddAllowLinkToPageParts < ActiveRecord::Migration[5.0]
  def change
    add_column :page_parts, :allow_link, :boolean
  end
end
