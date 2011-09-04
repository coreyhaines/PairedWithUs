class User < ActiveRecord::Base
  include Gravtastic
  is_gravtastic secure: false, size: 80, default: "identicon"

  devise :trackable, :token_authenticatable, :omniauthable

  has_many :pairing_sessions_left, foreign_key: :pair_1_id, class_name: "PairingSession"
  has_many :pairing_sessions_right, foreign_key: :pair_2_id, class_name: "PairingSession"

  def pairing_sessions
    (pairing_sessions_left + pairing_sessions_right).sort_by(&:start).reverse
  end

  def new_pairing_session(params = {})
    pairing_sessions_left.new params
  end

  def find_pairing_session(id)
    PairingSession.where("id = ? AND (pair_1_id = ? OR pair_2_id = ?)",
                          id, self.id, self.id).first
  end

  def self.find_for_facebook_oauth(access_token, signed_in_resource=nil)
    data = access_token['extra']['user_hash']
    if user = User.find_by_email(data["email"])
      user
    else # Create a user with a stub password.
      User.create(:email => data["email"], :password => Devise.friendly_token[0,20])
    end
  end

  def self.new_with_session(params, session)
    super.tap do |user|
      if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["user_hash"]
        user.email = data["email"]
      end
    end
  end
end
