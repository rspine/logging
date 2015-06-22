module Spine
  module Logging
    module Logs
      autoload :Filesystem, 'spine/logging/logs/filesystem'
      autoload :Output, 'spine/logging/logs/output'
      autoload :Syslog, 'spine/logging/logs/syslog'

      include Output
      include Filesystem

      def add_extensions(log)
        log.extend(Extensions)
      end

      def add_formatter(log)
        log.formatter = ProcessLogFormatter
        log
      end

      private

      module Extensions
        def write(message)
          info(message)
        end
      end
    end
  end
end
