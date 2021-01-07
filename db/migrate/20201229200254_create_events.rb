class CreateEvents < ActiveRecord::Migration[6.1]
  def change
    create_table :events do |t|
      t.date :date
      t.text :description
      t.string :location
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
