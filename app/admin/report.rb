ActiveAdmin.register_page 'Report' do
  menu label: -> { I18n.t('active_admin.reports.report') }, priority: 11

  content title: I18n.t('report', scope: 'active_admin.reports') do
    render partial: 'admin/report/index_table'
  end
end
