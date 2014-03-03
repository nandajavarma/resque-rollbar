module Resque
  module Failure
    class RollBar < Base
      def save
        ::Rollbar.report_exception(Exception.exception("Resque Failed"), nil, nil, :critical)
      end
    end
  end
end
