class DataStructuresController < ApplicationController
  load_and_authorize_resource

  # GET /data_structures
  # GET /data_structures.json
  def index
    @data_structures = DataStructure.by_user(current_user.id).page(params[:page])
  end

  # GET /data_structures/1
  # GET /data_structures/1.json
  def show
  end

  # GET /data_structures/new
  def new
    @data_structure = DataStructure.new
  end

  # GET /data_structures/1/edit
  def edit
  end

  # POST /data_structures
  # POST /data_structures.json
  def create
    @data_structure = DataStructure.new(data_structure_params.merge(user_id: current_user.id))
    @data_structure.structure = CreateStructureService.new(data_structure_params).create.to_yaml

    respond_to do |format|
      if @data_structure.save
        format.html { redirect_to @data_structure, notice: 'Data structure was successfully created.' }
        format.json { render :show, status: :created, location: @data_structure }
      else
        format.html { render :new }
        format.json { render json: @data_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /data_structures/1
  # PATCH/PUT /data_structures/1.json
  def update
    respond_to do |format|
      if @data_structure.update(data_structure_params)
        format.html { redirect_to @data_structure, notice: 'Data structure was successfully updated.' }
        format.json { render :show, status: :ok, location: @data_structure }
      else
        format.html { render :edit }
        format.json { render json: @data_structure.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /data_structures/1
  # DELETE /data_structures/1.json
  def destroy
    @data_structure.destroy
    respond_to do |format|
      format.html { redirect_to data_structures_url, notice: 'Data structure was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def data_structure_params
      params.require(:data_structure).permit(
        :name,
        :structure_type,
        values: []
      )
    end
end
