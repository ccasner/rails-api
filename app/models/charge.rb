# frozen_string_literal: true

class Charge < ApplicationRecord
  belongs_to :user
  # validates :text, :user, presence: true
end
