class AddJtiToApiUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :api_users, :jti, :string
    add_index :api_users, :jti, unique: true
  end
end
