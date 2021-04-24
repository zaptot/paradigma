ActiveAdmin.register_page 'Event Report' do
  menu parent: 'Report', label: -> { I18n.t('active_admin.reports.event_report') }

  controller do
    def index
      respond_to do |format|
        format.html { super }
      end
    end

    def collection_path
      admin_event_report_path
    end

    def collection
      Event.joins(:child)
           .group('event, year')
           .order(:year)
           .select('extract(year from date) as year, event, count(*)')
    end
  end

  content title: I18n.t('event_report', scope: 'active_admin.reports') do
    render partial: 'admin/event_report/index_table'
  end
end
