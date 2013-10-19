ActiveAdmin.register Photo do
  menu label: 'Fotos', priority: 2

  controller do
    def permitted_params
      params.permit photo: [:photo_kind, :photo]
    end
  end

  index do
    column('ID') { |photo| link_to photo.id, admin_photo_path(photo) }
    column('Foto') { |photo| link_to image_tag(photo.photo.url(:thumb)), admin_photo_path(photo) }
    column('Arquivo') { |photo| link_to photo.photo_file_name, admin_photo_path(photo) }
    column('Tipo') { |photo| photo.photo_kind_humanize }

    default_actions
  end

  show do |photo|
    attributes_table do
      row :id
      row('Tipo') { photo.photo_kind_humanize }
      row('Arquivo') { photo.photo_file_name }
      row('Foto') { image_tag photo.photo.url }
    end
  end

  filter :photo_kind, label: 'Tipo', as: :select, collection: PhotoKind.to_a

  form do |f|
    f.inputs 'Foto' do
      f.input :photo_kind, as: :select, collection: PhotoKind.to_a, include_blank: false
      f.input :photo, as: :file
    end

    f.actions
  end
end
