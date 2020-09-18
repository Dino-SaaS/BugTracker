module BugsHelper
  def render_status(bug)
    bug.status.gsub('_',' ').capitalize
  end

  def status_icon_class(bug)
    case bug.status
    when 'open'
      'bg-success'
    when 'in_progress'
      'bg-primary'
    when 'closed'
      'bg-danger'
    end
  end

  def render_date(date)
    date.strftime('%m-%d-%Y at %I:%M%p')
  end
end
