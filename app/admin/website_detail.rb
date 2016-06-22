ActiveAdmin.register WebsiteDetail do
  menu label: 'Site', priority: 3

  actions :all, except: [:new, :destroy]

  config.filters = false

  controller do
    def permitted_params
      params.permit website_detail: [:headline1, :headline2, :intro, :photo1, :photo2, :photo3, :photo4]
    end
  end

  index do
    column('Última atualização') { |website_detail| l website_detail.updated_at }

    actions
  end

  show do |website_detail|
    attributes_table do
      row('Chamada 1') { website_detail.headline1 }
      row('Chamada 2') { website_detail.headline2 }
      row('Introdução') { website_detail.intro }

      row('Foto 1') { image_tag website_detail.photo1.url }
      row('Foto 2') { image_tag website_detail.photo2.url }
      row('Foto 3') { image_tag website_detail.photo3.url }
      row('Foto 4') { image_tag website_detail.photo4.url }
    end
  end

  form do |f|
    f.inputs 'Site' do
      f.input :headline1
      f.input :headline2
      f.input :intro

      f.input :photo1, as: :file, hint: image_tag(f.object.photo1.url(:thumb))
      f.input :photo2, as: :file, hint: image_tag(f.object.photo2.url(:thumb))
      f.input :photo3, as: :file, hint: image_tag(f.object.photo3.url(:thumb))
      f.input :photo4, as: :file, hint: image_tag(f.object.photo4.url(:thumb))

    end

    f.actions
  end
end
