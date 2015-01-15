# app/controllers/pages_controller.rb
class PagesController < ApplicationController
  include HighVoltage::StaticPage
 
  layout :layout_for_page

  private

  def layout_for_page
    case params[:id]
    when 'index'
      'index'
    when 'documentation'
      'documentation'
    else
      'application'
    end
  end
end