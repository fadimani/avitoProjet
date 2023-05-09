class ApplicationController < ActionController::Base
  include SessionsHelper

  private

  def authenticate
    unless logged_in?
      flash[:danger] = "Merci de se connecter."
      redirect_to login_url
    end
  end

  def bon_utilisateur
    @utilisateur = Utilisateur.find(params[:id])
    redirect_to(root_url) unless @utilisateur == @utilisateur_courant
  end
end
