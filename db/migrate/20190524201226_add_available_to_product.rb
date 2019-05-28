class AddAvailableToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :available, :boolean
  end
end
