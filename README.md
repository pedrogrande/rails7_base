# README

validates :eth_address, presence: true, uniqueness: true
  validates :eth_nonce, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true

rails g scaffold Member eth_address:text eth_nonce:text username:text
