module Spine
  module Logging
    module ProcessLogFormatter
      extend self

      def call(severity, timestamp, name, message)
        "[#{ severity } #{ timestamp.utc.iso8601(3) } ##{ Process.pid.to_s }] #{ message }\r\n"
      end
    end
  end
end
