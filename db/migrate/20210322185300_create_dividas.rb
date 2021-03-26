class CreateDividas < ActiveRecord::Migration[6.0]
  def change
    create_table :dividas do |t|
      t.decimal :preco, precision: 10, scale: 2
      t.string :descricao
      t.references :cliente, null: false, foreign_key: true

      t.timestamps
    end
  end
end
