class PairingSessionsController < ApplicationController
  def index
    @sessions = PairingSession.with_users
  end

  def new
    @session = PairingSession.new
  end
end
