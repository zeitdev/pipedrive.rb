module Pipedrive
  class Deal < Base
    include ::Pipedrive::Operations::Create
    include ::Pipedrive::Operations::Read
    include ::Pipedrive::Operations::Update
    include ::Pipedrive::Operations::Delete

    def add_product(deal_id, params)
      make_api_call(:post, "#{deal_id}/products", params)
    end
  end
end
