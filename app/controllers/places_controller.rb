class PlacesController < ApplicationController
  before_action :set_place, only: [:show, :edit, :update, :destroy]

  # GET /places
  def index
    @places = Place.all
  end

  # GET /places/1
  def show
  end

  # GET /places/new
  def new
    @place = Place.new
    # ["Ca", "Thit", "Rau", "Trung", "HaiSan"].each do |name| 
    #   @place.expenses << Expense.new(name: name)
    # end
    # @expenses_everyday = @place.expenses
    # @place.expenses = []
    # ["Gao", "Dau", "Lac(Dau Phong)", "Dau", "Duong", "Sua", "Keo/Banh"].each do |name| 
      
    #   @place.expenses << Expense.new(name: name)
    # end
    # @expenses_term = @place.expenses
    ["Ca", "Thit", "Rau", "Trung", "HaiSan", "Gao", "Dau", "Lac(Dau Phong)", "Dau", "Duong", "Sua", "Keo/Banh"].each do |name| 
      @place.expenses << Expense.new(name: name)
    end
    @expenses = @place.expenses
  end

  # GET /places/1/edit
  def edit
  end

  # POST /places
  def create
    @place = Place.new(place_params)

    if @place.save
      redirect_to @place, notice: 'Place was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /places/1
  def update
    if @place.update(place_params)
      redirect_to @place, notice: 'Place was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /places/1
  def destroy
    @place.destroy
    redirect_to places_url, notice: 'Place was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_place
      @place = Place.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def place_params
      params.require(:place).permit(:name, :start_date)
    end
end
