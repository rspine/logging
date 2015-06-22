require 'syslog/logger'

module Spine
  module Logging
    module Logs
      module Syslog
        def syslog(name)
          log = ::Syslog::Logger.new(name)
          add_extensions(log)
        end
      end
    end
  end
end
