# frozen_string_literal: true

# rubocop:disabled Style/Documentation
class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :username

      t.timestamps
    end
  end
end
# rubocop:enabled Style/Documentation
