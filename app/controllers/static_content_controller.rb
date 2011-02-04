class StaticContentController < ApplicationController

  caches_page :index, :accommodation, :gallery, :localization, :contact

  def index; end
  def accommodation; end
  def gallery; end
  def localization; end
  def contact; end
end
