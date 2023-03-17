class WelcomesController < ApplicationController
  require "prawn"
  def index
    @insurances = Insurance.all
    @textcenters = Textcenter.all
    @chicagohighlights = Chicagohighlight.all
    @chicagohighlight2s = Chicagohighlight2.all
    @statecontainers = Statecontainer.all
    @stateproducts = Stateproduct.all
    @stateproduct2s = Stateproduct2.all
    @highlights = Highlight.all
    @autoinsurances = Autoinsurance.all
  end
  
end
