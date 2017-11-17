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
end
