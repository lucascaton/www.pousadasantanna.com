class StaticContentController < ApplicationController
  caches_page :index, :accommodation, :gallery, :localization

  def index; end
  def accommodation; end
  def gallery; end
  def localization; end
  def contact_form; end

  def contact
    if (params[:contact_form][:name].blank? || params[:contact_form][:email].blank? ||
        params[:contact_form][:message].blank? || params[:contact_form][:message] == 'Digite aqui sua mensagem...')
      flash[:error] = 'Os campos Nome, E-mail e Mensagem são obrigatórios.'
    else
      flash[:notice] = 'Recebemos sua mensagem, em breve entraremos em contato.'
      Notifier.contact(params[:contact_form]).deliver
    end
    redirect_to contact_form_path
  end
end
