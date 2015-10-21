class PageController < ApplicationController
  
before_action :authenticate_user!

  def project
  end

  def approval
  end

  def task
  end

  def issue
  end

  def project_health
  end
end
