require 'logger'

module Spine
  module Logging
    module Logs
      def get(name)
        prepare(open_log(name))
      end

      def prepare(stream)
        log = Logger.new(stream).extend(Extensions)
        log.formatter = ProcessLogFormatter
        log
      end

      def output
        prepare(STDOUT)
      end

      def path=(path)
        @path = path
      end

      def path
        @path
      end

      private

      def open_log(name)
        log = File.open(full_path(name), 'a')
        log.sync = true
        log
      end

      def full_path(name)
        File.join(path, "#{ name }.log").to_s
      end

      module Extensions
        def write(message)
          info(message)
        end
      end
    end
  end
end
