class PagesController < ApplicationController
  def home
    @space = Space.new
    @space = Space.all
  end

end
