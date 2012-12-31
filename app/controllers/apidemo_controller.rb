class ApidemoController < ApplicationController

  require(File.join(Rails.root, "lib", "electioncounter", "graph"))

  respond_to :html

  def api_v1_demo_graphs
    respond_to do |format|
      format.html
    end
  end

  def api_v1_demo_rawdata
    respond_to do |format|
      format.html
    end
  end

end
