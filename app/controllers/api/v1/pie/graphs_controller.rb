module Api
  module V1
    module Pie
      class GraphsController < ApplicationController

        require(File.join(Rails.root, "lib", "electioncounter", "graph"))

        respond_to :json

        def graph_pie_type1
          respond_with ElectionCounter::Graph.build_graph_pie_type1(resolution: params[:resolution])
        end

        def graph_pie_type2
          respond_with ElectionCounter::Graph.build_graph_pie_type2(resolution: params[:resolution])
        end

      end #Class
    end # Bar
  end # V1
end # Api
