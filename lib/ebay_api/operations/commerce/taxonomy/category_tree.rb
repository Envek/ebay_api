class EbayAPI
  scope :commerce do
    scope :taxonomy do
      scope :category_tree do
        operation :default_category_tree do
          http_method :get
          path { "get_default_category_tree_id" }
          query { { marketplace_id: marketplace_id } }

          option :marketplace_id
        end

        operation :get_subtree do
          http_method :get
          path { "category_tree/#{category_tree_id}/get_category_subtree" }
          query { { category_id: category_id } }

          option :category_tree_id
          option :category_id
        end
      end
    end
  end
end
