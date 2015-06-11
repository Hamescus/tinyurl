class HomeController < ApplicationController

  def index
    @link = Link.new
  end

  def create
    @link = Link.create!(link_params)
    @link.user_id = logged_user.id
    @link.save
  end

  def redirect
    @link = Link.find_by!(secure_url:params[:id])
    redirect_to @link.long_url
  end

  def delete
    @link = Link.find_by!(secure_url:params[:id])
    @link.destroy

    redirect_to 'users#show'
  end

  protected
  def link_params
    params.require(:link).permit(:long_url)
  end
end
