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
    @taken = Url.find_by(external_url: uri_last_str(params[:url][:external_url]))
    if @taken.present?
      render :taken
    else
      @url.save
    end
  end

  # README! => https://git.io/vd2Vb
  def create_api
    @url = Url.new(url_params)
    @taken = Url.find_by(external_url: uri_last_str(params[:url][:external_url]))
    if @taken.present?
      render json: {
        status: 302,
        short_url: root_url + @taken.short_url
      }
    else
      if @url.save
        render json: {
          status: 201,
          short_url: root_url + @url.short_url
        }
      else
        render json: {
          status: 422,
          error: @url.errors.full_messages.first
        }
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
