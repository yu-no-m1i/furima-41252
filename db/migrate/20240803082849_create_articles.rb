class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|

      t.timestamps
      t.string     :status        , null: false
      t.string     :size        , null: false
      t.string     :shipping_cost        , null: false
      t.string     :shipping_days        , null: false
      t.string     :prefecture_id        , null: false
      t.string     :judgmen        
      t.integer    :category_id     , null: false, foreign_key: true 
      t.integer    :brand_id     ,null: false, foreign_key: true
      t.integer    :shipping_id     ,null: false, foreign_key: true
      t.timestamps
    end
  end
end
