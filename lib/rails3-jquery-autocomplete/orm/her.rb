module Rails3JQueryAutocomplete
  module Orm
    module Her
      def get_autocomplete_items(parameters)
        model   = parameters[:model]
        term    = parameters[:term]
        method  = parameters[:method]
        options = parameters[:options]
        scopes  = Array(options[:scopes])
        where   = options[:where]
        limit   = get_autocomplete_limit(options)
        order   = options[:order]



        model.all(term: term, order: order, limit: limit)
      end
    end
  end
end
