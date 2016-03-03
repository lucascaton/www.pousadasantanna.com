class PagesController < ApplicationController
  def index
    @website_detail = WebsiteDetail.first

    @accommodation_photos = Photo.accommodation

    @gallery_photos = Photo.gallery

    @form_fields = [
      { field: 'name',    title: 'Nome',     type: :text_field, placeholder: 'Seu Nome' },
      { field: 'company', title: 'Empresa',  type: :text_field, placeholder: 'Sua Empresa' },
      { field: 'email',   title: 'Email',    type: :text_field, placeholder: 'seu.nome@email.com' },
      { field: 'phone',   title: 'Telefone', type: :text_field, placeholder: '(11) 2222-3333' },
      { field: 'message', title: 'Mensagem', type: :text_area,  placeholder: 'Digite sua mensagem aqui...' }
    ]
  end
end
