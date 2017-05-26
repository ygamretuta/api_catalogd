class CatalogsController < ApplicationController
  before_action :set_catalog, only: [:show, :update, :destroy]

  def index
    @catalogs = Catalog.all
    json_response({catalogs: @catalogs})
  end

  def create
    @catalog = Catalog.create!(catalog_params)
    json_response(@catalog)
  end

  def show
    json_response(@catalog)
  end

  def update
    @catalog.update(catalog_params)
    head :no_content
  end

  def destroy
    @catalog.destroy
    head :no_content
  end

  private

  def catalog_params
    params.permit(:name, :description, :user_id)
  end

  def set_catalog
    @catalog = Catalog.find(params[:id])
  end
end
