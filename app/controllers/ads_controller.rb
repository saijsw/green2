
class AdsController < ApplicationController
  before_action :set_ad, only: [:show, :edit, :update, :destroy]
  before_action :own_ad, only: [:edit, :update, :destroy]
  before_action :login_required

  # GET /ads
  def index
    @ads = Ad.all
  end

  # GET /ads/1
  def show
  end

  # GET /ads/new
  def new
    @ad = Ad.new
  end

  # GET /ads/1/edit
  def edit
  end

  # POST /ads
  def create
    @ad = Ad.new(ad_params)
    @ad.user = current_user

    if @ad.save
      redirect_to @ad, notice: 'Ad was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /ads/1
  def update
    if @ad.update(ad_params)
      redirect_to @ad, notice: 'Ad was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /ads/1
  def destroy
    @ad.destroy
    redirect_to ads_url, notice: 'Ad was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ad
      @ad = Ad.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ad_params
      params.require(:ad).permit(:title, :description, :offer, :category_id, :expiration_date)
    end

    # user can edit only his own ads
    def own_ad
      redirect_to(ad_path(@ad), alert: 'You can edit only your own ads.') unless @ad.user == current_user
    end
end
