class DatasetsController < ApplicationController
  before_action :set_dataset, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @datasets = Dataset.all
    respond_with(@datasets)
  end

  def show
    
    respond_to do |format|
      format.html 
      format.csv { send_data @dataset.to_csv }
      
    end
  end

  def new
    @dataset = Dataset.new
    respond_with(@dataset)
  end

  def edit
  end

  def create
    @dataset = Dataset.new(dataset_params)
    @dataset.save
    respond_with(@dataset)
  end

  def update
    @dataset.update(dataset_params)
    respond_with(@dataset)
  end

  def destroy
    @dataset.destroy
    respond_with(@dataset)
  end

  private
    def set_dataset
      @dataset = Dataset.find(params[:id])
    end

    def dataset_params
      params.require(:dataset).permit(:nombre, :html, :mi_url, :bloque, :campo1, :campo2, :campo3, :campo4, :campo5, :campo6)
    end
end
