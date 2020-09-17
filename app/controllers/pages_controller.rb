class PagesController < ApplicationController
  layout :resolve_layout
  before_action :authenticate_user!, only: :dashboard

  private

  def resolve_layout
    case action_name
    when 'login', 'register'
      'authentication'
    else
      'dashboard'
    end
  end
end
