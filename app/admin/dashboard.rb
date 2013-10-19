ActiveAdmin.register_page 'Dashboard' do
  menu priority: 1, label: proc{ I18n.t('active_admin.dashboard') }

  content title: proc{ I18n.t('active_admin.dashboard') } do
    div class: 'blank_slate_container', id: 'dashboard_default_message' do
      span class: 'blank_slate' do
        span 'Bem-vindo à área administrativa do website da Pousada Santanna.'
        small 'Utilize os menus superiores para gerenciar fotos e outros conteúdos do site.'
      end
    end
  end
end
