class AddUserIdToDividends < ActiveRecord::Migration[7.0]
  def change
    add_column :dividends, :user_id, :integer
    add_index :dividends, :user_id
  end
end
