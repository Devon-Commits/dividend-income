ActiveRecord::Schema[7.0].define(version: 2022_11_11_154919) do
  create_table "dividends", force: :cascade do |t|
    t.string "stock_symbol"
    t.string "stock_name"
    t.decimal "div_amount"
    t.decimal "stock_owned"
    t.decimal "div_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
