class CreateJoinTableProductsBids < ActiveRecord::Migration[5.2]
  def change
    create_join_table :products, :bids do |t|
      # t.index [:product_id, :bid_id]
      # t.index [:bid_id, :product_id]
    end
  end
end
