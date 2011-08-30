class User < ActiveRecord::Base
  include Gravtastic
  is_gravtastic secure: false, size: 80, default: "identicon"

  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable

  has_many :pairing_sessions_left, foreign_key: :pair_1_id, class_name: "PairingSession"
  has_many :pairing_sessions_right, foreign_key: :pair_2_id, class_name: "PairingSession"

  def pairing_sessions
    (pairing_sessions_left + pairing_sessions_right).sort_by(&:start).reverse
  end

  def new_pairing_session(params = {})
    pairing_sessions_left.new params
  end
end
