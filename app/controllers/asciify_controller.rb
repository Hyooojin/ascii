class AsciifyController < ApplicationController
  def index
  end

  def show
    # ascii_text = params[:ascii_text]
    font = params[:font]
    
    require 'artii'
    
    a = Artii::Base.new(font: font)
    @result = a.asciify(params[:ascii_text])
    
  end
end
