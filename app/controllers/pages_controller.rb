class PagesController < ApplicationController
before_action :authenticate_user!, only: %i[ audit ]

  def home
  end

  def audit
  end
end
