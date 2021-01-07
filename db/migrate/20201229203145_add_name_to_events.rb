# frozen_string_literal: true

# rubocop:disabled Style/Documentation
class AddNameToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :name, :string
  end
end
# rubocop:enabled Style/Documentation
