# frozen_string_literal: true

# rubocop:disabled Style/Documentation
class RemoveColumn < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :user_id
  end
end
# rubocop:enabled Style/Documentation
