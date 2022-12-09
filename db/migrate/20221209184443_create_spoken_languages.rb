class CreateSpokenLanguages < ActiveRecord::Migration[7.0]
  def change
    create_table :spoken_languages do |t|
      t.string :name
      t.timestamps
    end

    create_table :user_spoken_languages do |t|
      t.references :spoken_language, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
