class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :country, :string
    add_column :users, :about_me, :text
  end
end
