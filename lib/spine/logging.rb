module Spine
  module Logging
    autoload :Logs, 'spine/logging/logs'
    autoload :NullFormatter, 'spine/logging/null_formatter'
    autoload :ProcessLogFormatter, 'spine/logging/process_log_formatter'
    autoload :Engine, 'spine/logging/engine'

    extend Logs
  end
end
