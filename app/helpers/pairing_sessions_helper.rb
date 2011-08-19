module PairingSessionsHelper
  def pairs_for_select
    User.all.map { |user|
      [user.name, user.id]
    }
  end
end
