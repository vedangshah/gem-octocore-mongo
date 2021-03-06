require 'mongo_mapper'

module Octo
  class AppLogout
    include MongoMapper::Document

    belongs_to :enterprise, class_name: 'Octo::Enterprise'

    key :created_at, Time
    key :userid, Integer
  end
end
