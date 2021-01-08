# frozen_string_literal: true

# rubocop:disabled Style/Documentation
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
# rubocop:enabled Style/Documentation
