class ReferentSearchesController < ApplicationController
  def new
    @referentSearch = ReferentSearch.new
    @reforganismId = params[:refId] if present?
  end

  def create
    @refId = params[:reforganismId]
    @referentSearch = ReferentSearch.create!(referent_search_params)
    redirect_to referent_search_path(@referentSearch, :refId => @refId)
  end

  def show
    @referentSearch = ReferentSearch.find(params[:id])
    @reforganismId = params[:refId]
  end

  private

  def referent_search_params
    params.require(:referent_search).permit(:familyName, :surname, :title, :telephone)
  end
end
