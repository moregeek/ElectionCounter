module Api
  module V1
    module Bar
      class GraphsController < ApplicationController

        require(File.join(Rails.root, "lib", "electioncounter", "graph"))

        respond_to :json

        def graph_bar_t1
          respond_with ElectionCounter::Graph.build_graph_bar_type1(resolution: params[:resolution])
        end

        def graph_bar_t2
          respond_with ElectionCounter::Graph.build_graph_bar_type2(resolution: params[:resolution])
        end

      end #Class
    end # Bar
  end # V1
end # Api
