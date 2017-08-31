class AddLinkToContents < ActiveRecord::Migration[5.0]
  def change
    add_column :contents, :link, :string
  end
end
