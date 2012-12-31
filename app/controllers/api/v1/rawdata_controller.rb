module Api
  module V1
    class RawdataController < ApplicationController

      respond_to :json

      # GET   api/v1/rawdata/votedistricts
      #
      def votedistricts
        data = Jbuilder.encode do |json|
          json.array!(Votedistrict.all) do |ent|
            json.name ent.name
            json.votes do |v|
              json.required ent.votes_required
              json.reached ent.votes_reached
            end
            json.districts do |d|
              json.array!(ent.districts.map(&:name))
            end
          end
        end
        respond_with data
      end

      # GET   api/v1/rawdata/districts
      #
      def districts
        data = Jbuilder.encode do |json|
          json.array!(District.all) do |entry|
            json.name entry.name
            json.votes entry.votes.sum(:count)
          end
        end
        respond_with data
      end

    end # Class
  end # V1
end # Api
