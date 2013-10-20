class MessagesController < ApplicationController
  def create
    Notifier.contact(params[:message]).deliver
    flash[:notice] = 'Recebemos sua mensagem, em breve entraremos em contato.'

    redirect_to root_path
  end
end
