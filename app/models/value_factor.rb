class ValueFactor < ApplicationRecord
  KEYS = [:base_criteria, :second_criteria, :third_criteria, :top_criteria].freeze
  CRITERIA_KEYS = [:value, :question].freeze
  attribute :base_criteria, :json, default: {}
  attribute :second_criteria, :json, default: {}
  attribute :third_criteria, :json, default: {}
  attribute :top_criteria, :json, default: {}
  store_accessor :base_criteria, *CRITERIA_KEYS, prefix: true
  store_accessor :second_criteria, *CRITERIA_KEYS, prefix: true
  store_accessor :third_criteria, *CRITERIA_KEYS, prefix: true
  store_accessor :top_criteria, *CRITERIA_KEYS, prefix: true
  store_accessor :criteria, *CRITERIA_KEYS, prefix: true
end