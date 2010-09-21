class HomeController < ApplicationController
  def index
    @page = Page.root
    render :text => "Site under construction" unless @page
  end

end
