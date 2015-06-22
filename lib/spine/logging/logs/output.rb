require 'logger'

module Spine
  module Logging
    module Logs
      module Output
        def output
          log = Logger.new(STDOUT)
          add_extensions(log)
          add_formatter(log)
        end
      end
    end
  end
end
