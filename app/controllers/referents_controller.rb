class ReferentsController < ApplicationController
  before_action :set_referent, only: [:show, :edit, :update, :destroy]

  # GET /referents
  # GET /referents.json
  def index
    @reforganism = Reforganism.find(params[:id])
    @referents = @reforganism.referents
  end

  # GET /referents/1
  # GET /referents/1.json
  def show
  end

  # GET /referents/new
  def new
    @referent = Referent.new
    @reforganismId = params[:id] if present?
  end

  # GET /referents/1/edit
  def edit
    @reforganismId = params[:refId]
  end

  # POST /referents
  # POST /referents.json
  def create
    @referent = Referent.new(referent_params)
    @reforganismId = params[:reforganismId]
    @reforganism = Reforganism.find(@reforganismId)
    @referent.reforganisms << @reforganism

    @okEmail = Referent.find_by_email(@referent.email)
    respond_to do |format|
      if !@okEmail.blank?
        @referent.errors.add(:email, message = "Email already taken.")
        format.html { render :new, :rid => params[:reforganismId] }
        format.json { render json: @referent.errors, status: :unprocessable_entity }
      else
        if @referent.save
          @reforganism = @referent.reforganisms.last
          format.html { redirect_to referent_path(@referent, :refId => @reforganism.id), notice: 'Referent was successfully created.'}
          format.json { render :show, status: :created, location: @referent }
        else
          format.html { render :new}
          format.json { render json: @referent.errors, status: :conflict }
        end
      end
    end
  end

  # PATCH/PUT /referents/1
  # PATCH/PUT /referents/1.json
  def update
    respond_to do |format|
      if @referent.update(referent_params)
        format.html { redirect_to referent_path(@referent, :refId => params[:reforganismId]), notice: 'Referent was successfully updated.'}
        format.json { render :show, status: :ok, location: @referent }
      else
        format.html { render :edit }
        format.json { render json: @referent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /referents/1
  # DELETE /referents/1.json
  def destroy
    @referent.destroy
    respond_to do |format|
      format.html { redirect_to referents_url(:id => params[:refId]), notice: 'Referent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def addreforganism
    @referent = Referent.find(params[:id])
    @referentOrganism = Reforganism.find(params[:refId])
    @referent.reforganisms << @referentOrganism

    respond_to do |format|
      if @referent.update_attributes(referent_relations)
        format.html { redirect_to referent_path(@referent, :refId => params[:refId]), notice: 'Referent was successfully added.'}
        format.json { render :show, status: :ok, location: @referent }
      else
        format.html { render :back }
        format.json { render json: @referent.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_referent
      @referent = Referent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def referent_params
      params.require(:referent).permit(:familyName, :surname, :title, :telephone, :cellphone, :fax, :email, :preference)
    end

    def referent_relations
      params.permit(:reforganisms)
    end
end
