module ElectionCounter
  class Graph
    class << self

      #
      # Pie Chart => 2D
      #
      def build_graph_pie_type1(options = {})
        Votedistrict.all.map do |vote_district|
          Gchart.pie( :data => [ vote_district.votes_reached, (vote_district.votes_required - vote_district.votes_reached) ],
                      :title => vote_district.name,
                      :size => (valid_resolution?(options[:resolution]) ? options[:resolution] : "350x200"),
                      :labels => ["Erhalten ( #{vote_district.votes_reached} )", "Offen ( #{vote_district.votes_left} )"],
                      :line_color => '4c2582'  )
        end
      end

      #
      # Pie Chart => 3D
      #
      def build_graph_pie_type2(options = {})
        Votedistrict.all.map do |vote_district|
          Gchart.pie_3d(  :data => [ vote_district.votes_reached, (vote_district.votes_required - vote_district.votes_reached) ],
                          :title => vote_district.name,
                          :size => (valid_resolution?(options[:resolution]) ? options[:resolution] : "350x150"),
                          :labels => ["Erhalten ( #{vote_district.votes_reached} )", "Offen ( #{vote_district.votes_left} )"],
                          :line_color => '4c2582'  )
        end
      end

      #
      # Bar Chart / Vertical
      #
      def build_graph_bar_type1(options ={})
        vd = Votedistrict.all
        data = Gchart.bar(:data => vd.map {|i| i.votes_reached},
                          :size => (valid_resolution?(options[:resolution]) ? options[:resolution] : (vd.count * 45 + 150).to_s + "x250"),
                          :max_value => 100, # axis heigh
                          :axis_with_labels => ['x','y'], # axis: bottom, left
                          :axis_labels => [ vd.map(&:id), [1,50,100] ],
                          :bar_colors => '4c2582',
                          :bar_width_and_spacing => [ 30, 15], # width of bar and spacing between bars
                          :legend => vd.map.with_index {|value,index| "#{index+1} #{value.name} ( #{value.votes_reached} )"} )
        data
      end

      #
      # Bar Chart / Horizontal
      #
      def build_graph_bar_type2(options ={})
        vd = Votedistrict.all
        data = Gchart.bar(:data => vd.map {|i| i.votes_reached},
                          :size => (valid_resolution?(options[:resolution]) ? options[:resolution] : (vd.count * 45 + 150).to_s + "x250"),
                          :max_value => 100, # axis heigh
                          :axis_with_labels => ['y','x'], # axis: bottom, left
                          :axis_labels => [ vd.map(&:id), [1,50,100] ],
                          :bar_colors => '4c2582',
                          :horizontal => true,
                          :bar_width_and_spacing => [ 30, 15], # width of bar and spacing between bars
                          :legend => vd.map.with_index {|value,index| "#{index+1} #{value.name} ( #{value.votes_reached} )"} )
        data
      end


      ################################################################################

      private

      def valid_resolution?(resolution)
        if /^\d+x\d+$/.match(resolution)
          true
        else
          false
        end
      end

    end # class; self
  end # class
end # module
