module BugsHelper
  def render_status(bug)
    bug.status.gsub('_',' ').capitalize
  end

  def status_icon_class(bug)
    case bug.status
    when 'open'
      'bg-primary'
    when 'in_progress'
      'bg-warning'
    when 'closed'
      'bg-success'
    end
  end

  def render_date(date)
    date.strftime('%m-%d-%Y at %I:%M%p')
  end
end
