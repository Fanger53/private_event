# frozen_string_literal: true

# rubocop:disabled Style/Documentation
class RemoveDateFromEvents < ActiveRecord::Migration[6.1]
  def change
    remove_column :events, :date, :date
  end
end
# rubocop:enabled Style/Documentation
