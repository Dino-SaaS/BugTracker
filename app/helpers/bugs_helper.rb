module BugsHelper
  def render_status(bug)
    format_status(bug.status)
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

  def platforms_for_select
    Bug.platforms.map { |b| [b[0], b[0]] }
  end

  def statuses_for_select
    Bug.statuses.map { |b| [format_status(b[0]), b[0]] }
  end

  def deletion_modal_id(bug)
    "deletion-modal-bug-#{bug.id}"
  end

  private

  def format_status(status)
    status.gsub('_', ' ').capitalize
  end
end
