class ResourceLanguagesController < ApplicationController
  def index
      @resource_languages = ResourceLanguage.order(id: :desc)
  end

  def show
      @resource_language ||= ResourceLanguage.find(params[:id])
  end
end
