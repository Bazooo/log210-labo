class ReferentSearchesController < ApplicationController
  def new
    @referentSearch = ReferentSearch.new
  end

  def create
    @referentSearch = ReferentSearch.create!(referent_search_params)
    redirect_to @referentSearch
  end

  def show
    @referentSearch = ReferentSearch.find(params[:id])
  end

  private

  def referent_search_params
    params.require(:referent_search).permit(:familyName, :surname, :title, :telephone)
  end
end
