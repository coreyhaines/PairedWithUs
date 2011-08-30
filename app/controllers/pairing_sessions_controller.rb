class PairingSessionsController < ApplicationController
  before_filter :authenticate_user!

  def index
    @sessions = current_user.pairing_sessions
  end

  def new
    @session = current_user.new_pairing_session
  end

  def create
    @session = current_user.new_pairing_session params[:pairing_session]
    if @session.save
      redirect_to pairing_sessions_url, notice: "Pairing session successfully registered"
    else
      render :new
    end
  end
end
