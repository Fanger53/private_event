# frozen_string_literal: true

# rubocop:disabled Style/Documentation
class AddUserIdToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :user_id, :Integer
  end
end
# rubocop:enabled Style/Documentation
