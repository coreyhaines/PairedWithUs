class PairingSessionsController < ApplicationController
  def index
    @sessions = PairingSession.with_users
  end

  def new
    @session = PairingSession.new
  end

  def create
    @session = current_user.pairing_sessions.new params[:pairing_session]
    if @session.save
      redirect_to pairing_sessions_url, :notice => "Pairing session successfully registered"
    else
      render :new
    end
  end
end
