module PairingSessionsHelper
  def pairs_for_select(without = [current_user])
    (User.all - without).map { |user|
      [user.name, user.id]
    }
  end
end
