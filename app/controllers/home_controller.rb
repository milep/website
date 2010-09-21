class HomeController < ApplicationController
  def index
    @page = Page.root
    render :text => "Site under construction" unless @page
  end

  def show_page
    @page = Page.find_by_short_name(params[:id])
    if @page
      render :action => 'index'
    else
      render :text => "Page not found"
    end
  end

end
