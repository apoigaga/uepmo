class PendaftarController < ApplicationController

	def index
		@pendaftars = Pendaftar.all
	end

	def show
    @pendaftar = Pendaftar.all
  end

  # GET /projects/new
  def new
    @pendaftar = Pendaftar.new
  end

  def create
    @pendaftar = Pendaftar.new(pendaftar_params)

    respond_to do |format|
      if @pendaftar.save
        format.html { redirect_to @pendaftar, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @pendaftar.errors, status: :unprocessable_entity }
      end
    end
  end



def edit
  @pendaftar = Pendaftar.find(params[:id])
end

def update
  @pendaftar = Pendaftar.find(params[:id])
  if @pendaftar.update_attributes(pendaftar_params)
    flash[:notice] = 'updated'
    redirect_to(:action => 'index')

  else

    render ("edit")
  end
  end


def delete
  @pendaftar = Pendaftar.find(params[:id])
end

def destroy
  Pendaftar.find(params[:id]).destroy
  flash[:notice] = "destroyed"
  redirect_to(:action => 'index')
  end

  private

  def pendaftar_params
    params.require(:pendaftar).permit(:first_name, :last_name)
  end
  
end

