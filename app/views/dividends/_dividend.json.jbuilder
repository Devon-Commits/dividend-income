json.extract! dividend, :id, :stock_symbol, :stock_name, :div_amount, :stock_owned, :div_total, :created_at, :updated_at
json.url dividend_url(dividend, format: :json)
