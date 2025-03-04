require "pact_broker/api/contracts/base_contract"

module PactBroker
  module Api
    module Contracts
      class PaginationQueryParamsSchema < BaseContract
        params do
          optional(:pageNumber).maybe(:integer).value(gteq?: 1)
          optional(:pageSize).maybe(:integer).value(gteq?: 1)
        end
      end
    end
  end
end
