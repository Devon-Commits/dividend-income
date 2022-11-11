class CreateDividends < ActiveRecord::Migration[7.0]
  def change
    create_table :dividends do |t|
      t.string :stock_symbol
      t.string :stock_name
      t.decimal :div_amount
      t.float :stock_owned
      t.decimal :div_total

      t.timestamps
    end
  end
end
