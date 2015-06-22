require 'logger'

module Spine
  module Logging
    module Logs
      module Filesystem
        def file(name)
          log = open_log(name)
          add_extensions(log)
          add_formatter(log)
        end
        # DEPRECATION: Removed from 0.3.0
        alias :get :file

        def path=(path)
          @path = path
        end

        def path
          @path
        end

        private

        def open_log(name)
          Logger.new(open_stream(name))
        end

        def open_stream(name)
          log = File.open(full_path(name), 'a')
          log.sync = true
          log
        end

        def full_path(name)
          File.join(path, "#{ name }.log").to_s
        end
      end
    end
  end
end
