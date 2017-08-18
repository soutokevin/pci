class RemoveOrderToContents < ActiveRecord::Migration[5.0]
  def change
  	remove_column :contents, :order
  end
end
