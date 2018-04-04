#
# Sell Inventory API
#
class EbayAPI
  scope :commerce do
    scope :taxonomy do
      path { "taxonomy/v#{EbayAPI::COMMERCE_TAXONOMY_VERSION[/^\w+/]}" }

      require_relative "taxonomy/category_tree"
    end
  end
end
