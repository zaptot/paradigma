ActiveAdmin.register_page 'Disorder Report' do
  menu parent: 'Report', label: -> { I18n.t('active_admin.reports.disorder_report') }

  controller do
    def index
      respond_to do |format|
        format.html { super }
      end
    end

    def collection_path
      admin_disorder_report_path
    end

    def collection
      ChildrenDisorder.preload(:disorder)
                      .group('disorder_id, date')
                      .order(:date)
                      .select('date, disorder_id, count(*)')
    end
  end

  content title: I18n.t('disorder_report', scope: 'active_admin.reports') do
    render partial: 'admin/disorder_report/index_table'
  end
end
