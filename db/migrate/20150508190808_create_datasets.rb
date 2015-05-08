class CreateDatasets < ActiveRecord::Migration
  def change
    create_table :datasets do |t|
      t.string :nombre
      t.text :html
      t.string :mi_url
      t.string :bloque
      t.string :campo1
      t.string :campo2
      t.string :campo3
      t.string :campo4
      t.string :campo5
      t.string :campo6

      t.timestamps
    end
  end
end
