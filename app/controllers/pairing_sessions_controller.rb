class PairingSessionsController < ApplicationController
  def index
    @sessions = PairingSession.with_users
  end
end
