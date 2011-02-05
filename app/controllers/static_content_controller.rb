class StaticContentController < ApplicationController

  caches_page :index, :accommodation, :gallery, :localization, :contact

  def index; end
  def accommodation; end
  def gallery; end
  def localization; end
  def contact_form; end

  def contact
    Notifier.contact(params[:contact_form]).deliver
    flash[:notice] = 'Recebemos sua mensagem, em breve entraremos em contato.'
    redirect_to root_url
  end
end
