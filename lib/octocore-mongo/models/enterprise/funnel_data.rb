require 'mongo_mapper'
require 'octocore-mongo/record'

module Octo

  # Stores the data for funnels
  class FunnelData
    include MongoMapper::Document
    include Octo::Record

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :funnel_slug, String

    key :ts, Time
    key :value, Array

  end
end

