class UrlsController < ApplicationController
  before_action :set_url, only: [:show]

  def show
    @url.update_attribute('visited', @url.visited+1)
    redirect_to @url.external_url
  end

  def new
    @url = Url.new
  end

  def create
    @url = Url.new(url_params)

    @taken = Url.find_by(external_url: params[:url][:external_url])
    if @taken.present?
      render :taken
    else
      if @url.save
        @url.short_url = SecureRandom.urlsafe_base64(4)
        @url.save
      end
    end
  end

  private
    def set_url
      @url = Url.find_by_short_url(params[:short_url])
    end

    def url_params
      params.require(:url).permit(:external_url)
    end
end
