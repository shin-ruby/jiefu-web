class InfosController < ApplicationController
  def index
  	@infos = Info.paginate(page: params[:page], :per_page => 8)
  end

  def show
  	@info = Info.find(params[:id])
  end
end
