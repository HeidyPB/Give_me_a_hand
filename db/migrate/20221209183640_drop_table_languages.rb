class DropTableLanguages < ActiveRecord::Migration[7.0]
  def change
    drop_table :user_languages
    drop_table :languages
  end
end
