 class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  before_action :authenticate_user!

  # GET /projects
  # GET /projects.json
  def index
    @projects = Project.all
    
  end

  def pendaftar
    @projects = Project.all
  end

  def bendahari
    @projects = Project.all
  end

def antarabangsa
    @projects = Project.all
  end

  def hep
    @projects = Project.all
  end

  def jaringan
    @projects = Project.all
  end

  def penyelidikan
    @projects = Project.all
  end

  def akademik
    @projects = Project.all
  end


 

  # GET /projects/1
  # GET /projects/1.json
  def show
    @project = Project.find(params[:id])
    #@project = Project.find_by(category: params[:cat])
    #@project ||= Project.find(params[:id])
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  # GET /projects/1/edit
  def edit
    
  end

  

  # POST /projects
  # POST /projects.json
  def create
    @project = Project.new(project_params)

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


# contoh nk buat file json
  def listproject
    project = Project.all
      

    render json: project 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params
      params.require(:project).permit(:projectname, :description, :startdate, :finishdate, 
        :leaddirector, :programmemanager, :projectmanager, :programme, :transformation, :components, 
        :projectoutcome, :terasrmke11berkaitan, :agendautamaberkaitan, :kpiuitmberkaitan, :deliverables, :firstmilestone, 
        :impact, :budget, :latihan)
    end
end
