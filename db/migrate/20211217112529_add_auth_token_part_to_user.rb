class AddAuthTokenPartToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :auth_token_part,:string, default: nil
  end
end
