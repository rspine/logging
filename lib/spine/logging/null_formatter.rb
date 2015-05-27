module Spine
  module Logging
    module NullFormatter
      extend self

      def call(severity, timestamp, name, message)
        "#{ message }\r\n"
      end
    end
  end
end
