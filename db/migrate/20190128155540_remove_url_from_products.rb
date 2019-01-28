class RemoveUrlFromProducts < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :url, :string
  end
end
