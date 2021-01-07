# frozen_string_literal: true

# rubocop:disabled Style/Documentation
class AddDateToEvents < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :date, :datetime
  end
end
# rubocop:enabled Style/Documentation
