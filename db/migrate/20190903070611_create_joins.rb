class CreateJoins < ActiveRecord::Migration[6.0]
  def change
    create_table :joins do |t|
      t.belongs_to :item, index: true
      t.belongs_to :cart, index: true
      t.timestamps
    end
  end
end
