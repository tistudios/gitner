class BusinessEntitiesController < ApplicationController
  before_action :set_business_entity, only: [:show, :edit, :update, :destroy]

  # GET /business_entities
  # GET /business_entities.json
  def index
    @business_entities = BusinessEntity.all
  end

  # GET /business_entities/1
  # GET /business_entities/1.json
  def show
  end

  # GET /business_entities/new
  def new
    @business_entity = BusinessEntity.new
  end

  # GET /business_entities/1/edit
  def edit
  end

  # POST /business_entities
  # POST /business_entities.json
  def create
    @business_entity = BusinessEntity.new(business_entity_params)

    respond_to do |format|
      if @business_entity.save
        format.html { redirect_to @business_entity, notice: 'Business entity was successfully created.' }
        format.json { render :show, status: :created, location: @business_entity }
      else
        format.html { render :new }
        format.json { render json: @business_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /business_entities/1
  # PATCH/PUT /business_entities/1.json
  def update
    respond_to do |format|
      if @business_entity.update(business_entity_params)
        format.html { redirect_to @business_entity, notice: 'Business entity was successfully updated.' }
        format.json { render :show, status: :ok, location: @business_entity }
      else
        format.html { render :edit }
        format.json { render json: @business_entity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /business_entities/1
  # DELETE /business_entities/1.json
  def destroy
    @business_entity.destroy
    respond_to do |format|
      format.html { redirect_to business_entities_url, notice: 'Business entity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_business_entity
      @business_entity = BusinessEntity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def business_entity_params
      params.require(:business_entity).permit(:title, :url, :name, :founded)
    end
end
