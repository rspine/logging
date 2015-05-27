module Spine
  module Logging
    module Engine
      module Configuration
        def logs
          ::Spine::Logging
        end

        def logger
          @logger ||= logs.output
        end
      end

      extend self

      def configuration
        Configuration
      end
    end
  end
end
