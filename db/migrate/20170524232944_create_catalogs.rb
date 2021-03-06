class CreateCatalogs < ActiveRecord::Migration[5.1]
  def change
    create_table :catalogs do |t|
      t.string :name
      t.string :description
      t.boolean :active, default: true

      t.timestamps
    end
  end
end
