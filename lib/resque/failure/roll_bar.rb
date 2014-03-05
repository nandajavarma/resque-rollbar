module Resque
  module Failure
    class RollBar < Base
      def save
        ::Rollbar.report_exception(exception, payload, nil, :critical)
      end
    end
  end
end
