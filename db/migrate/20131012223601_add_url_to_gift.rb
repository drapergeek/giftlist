class AddUrlToGift < ActiveRecord::Migration
  def change
    add_column :gifts, :url, :string
  end
end
