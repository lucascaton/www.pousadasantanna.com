ActiveAdmin.register User do
  menu label: 'Usuários', parent: 'Configurações'

  controller do
    def permitted_params
      params.permit user: [:email, :password, :password_confirmation]
    end
  end

  index do |user|
    column :email

    default_actions
  end

  show do |user|
    attributes_table do
      row :id
      row :email
      row('Contagem de logins') { user.sign_in_count }
      row('Atual login feito em') { user.current_sign_in_at }
      row('Último login feio em') { user.last_sign_in_at }
      row('IP do login atual') { user.current_sign_in_ip }
      row('IP do último login') { user.last_sign_in_ip }
      row('Criado em') { user.created_at }
      row('Atualizado em') { user.updated_at }
    end
  end

  filter :email

  form do |f|
    f.inputs 'Detalhes do usuário' do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end

    f.actions
  end
end
