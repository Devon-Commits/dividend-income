class Dividend < ApplicationRecord

    def stock_total
        result = div_amount * stock_owned
        return result
    end

end
