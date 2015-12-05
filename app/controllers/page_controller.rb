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

 
def index
    @pendaftars = Pendaftar.all
    
  end

  def show
    @pendaftar = Pendaftar.find(params[:id])
  end
 

end
