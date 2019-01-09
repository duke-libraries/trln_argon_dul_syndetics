module TrlnArgon
  module ViewHelpers
    module ItemsSectionHelper
      def items_spacer_class
        'items-spacer col-md-12'
      end

      def items_wrapper_class
        'items-wrapper items-section-index col-md-12'
      end

      def item_class
        'item col-md-12'
      end

      def availability_class
        'available col-md-5'
      end

      def location_header_class
        'location-header col-md-12'
      end

      def institution_location_header_class
        'institution location-header col-md-12'
      end

      def location_narrow_group_class
        'location-narrow-group col-md-12'
      end

      def holdings_summary_wrapper_class
        'col-sm-12 summary-wrapper'
      end

      def holdings_note_class
        'holding-note col-md-12'
      end

      def url_note_wrapper_class
        'url-note-wrapper'
      end

      def item_availability_display(item)
        case item['status']
        when /^available/i
          'item-available'
        when /^checked out/i, /\blost\b/i, /^missing/i
          'item-not-available'
        when /(?:in-)?library use only/i
          'item-library-only'
        else
          'item-availability-misc'
        end
      end

      def binary_availability_span_class(options = {})
        doc = options.fetch(:document, nil)
        if doc && doc.availability == 'Available'
          'item-available'
        elsif doc && doc.availability == 'Not Available'
          'item-not-available'
        else
          'item-available'
        end
      end

      def call_number_wrapper_class(_options = {})
        'col-md-5 col-sm-12 call-number-wrapper'
      end

      def status_wrapper_class(_options = {})
        'col-md-7 col-sm-12'
      end

      def item_note_wrapper_class(_options = {})
        'col-md-12'
      end

      def display_holdings_well?(options = {})
        doc = options.fetch(:document, nil)
        doc &&
          (doc.findingaid_urls.any? ||
           doc.fulltext_urls.any? ||
           doc.open_access_urls.any? ||
           display_items?(document: doc) ||
           doc.shared_fulltext_urls.any?)
      end

      def display_items?(options = {})
        return unless options.fetch(:document, nil)
        !(options[:document].holdings.keys - ['ONLINE', 'DUKIR', '', nil]).empty?
      end

      def suppress_item?(options = {})
        loc_b = options.fetch(:loc_b, '')
        item_data = options.fetch(:item_data, {})

        loc_b == 'ONLINE' ||
          loc_b == 'DUKIR' ||
          loc_b.blank? ||
          item_data.fetch('items', []).empty?
      end

      def add_spacer_above_items_section?(options = {})
        doc = options.fetch(:document, nil)
        doc &&
          (doc.findingaid_urls.any? ||
           doc.fulltext_urls.any? ||
           doc.shared_fulltext_urls.any? ||
           doc.open_access_urls.any?)
      end

      def get_item_id(item)
        item.key?('item_id') ? item['item_id'] : ''
      end

      def assign_item_id_as_id(item)
        item.key?('item_id') ? "id=\"item-#{CGI.escapeHTML(item['item_id'])}\"".html_safe : ''
      end
    end
  end
end
