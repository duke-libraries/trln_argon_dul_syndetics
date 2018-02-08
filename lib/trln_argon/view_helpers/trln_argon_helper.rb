require 'trln_argon/view_helpers/syndetics_helper'
require 'trln_argon/view_helpers/document_export_helper'

module TrlnArgon
  module ViewHelpers
    # Shared helpers for TRLN Argon based applicatilns
    # Methods can be overridden in the local application
    # in app/helpers/trln_argon_helper.rb
    module TrlnArgonHelper
      include SyndeticsHelper
      include DocumentExportHelper

      def institution_code_to_short_name(options = {})
        options[:value].map do |val|
          t("trln_argon.institution.#{val}.short_name", default: val)
        end.to_sentence
      end

      def auto_link_values(options = {})
        options[:value].map { |value| auto_link(value) }.to_sentence.html_safe
      end

      def entry_name(count)
        entry = t('blacklight.entry_name.default')
        count.to_int == 1 ? entry : entry.pluralize
      end

      def institution_short_name
        t("trln_argon.institution.#{TrlnArgon::Engine.configuration.local_institution_code}.short_name")
      end

      def institution_long_name
        t("trln_argon.institution.#{TrlnArgon::Engine.configuration.local_institution_code}.long_name")
      end

      def consortium_short_name
        t('trln_argon.consortium.short_name')
      end

      def consortium_long_name
        t('trln_argon.consortium.long_name')
      end

      def map_argon_code(inst, context, value)
        TrlnArgon::LookupManager.instance.map([inst, context, value].join('.'))
      end

      def list_of_linked_subjects_segments(options = {})
        link_to_subject_segments(options).map do |subject|
          content_tag(:li, subject, class: options[:field])
        end.join('').html_safe
      end

      def link_to_subject_segments(options = {})
        options[:value].map { |subject| build_segment_links(subject).html_safe }
      end

      def location_filter_display(value = '')
        values = value.split(':')

        values.map do |code|
          map_argon_code(values.first, 'facet', code)
        end.join(I18n.t('trln_argon.search_constraints.location_separator'))
      end

      def show_configured_fields_and_values(config, document)
        config.map do |field_name, field|
          next unless document_has_value?(document, field)
          { field: field_name,
            label: field.label,
            value: presenter(document).field_value(field) }
        end.compact
      end

      def link_to_secondary_urls(options = {})
        options[:value].map do |url|
          link_text = if url[:text].present?
                        url[:text]
                      else
                        url[:href]
                      end
          link_to link_text, url[:href]
        end.join('<br />').html_safe
      end

      def link_to_primary_url(url_hash)
        link_to(primary_url_text(url_hash), url_hash[:href], class: "link-type-#{url_hash[:type]}")
      end

      def imprint_main(options = {})
        options[:document].imprint_main.map do |imprint|
          imprint_entry(imprint)
        end.join('<br />').html_safe
      end

      def imprint_multiple(options = {})
        options[:document].imprint_multiple.concat(options[:document].imprint_main).uniq.map do |imprint|
          imprint_entry(imprint)
        end.join('<br />').html_safe
      end

      def add_icon_to_action_label(document_action_config)
        if document_action_config.key?(:icon)
          content_tag(:i, '', class: "glyphicon #{document_action_config[:icon]}", 'aria-hidden' => 'true') + ' ' +
            document_action_label(document_action_config.key, document_action_config).html_safe
        else
          document_action_label(document_action_config.key, document_action_config).html_safe
        end
      end

      private

      def primary_url_text(url_hash)
        return url_hash[:text] if url_hash[:text].present?
        I18n.t('trln_argon.online_access')
      end

      def imprint_entry(imprint)
        [imprint_type(imprint),
         imprint_label(imprint),
         imprint_value(imprint)].compact.join(': ')
      end

      def imprint_type(imprint)
        return if imprint[:type].blank? || t("trln_argon.imprint_type.#{imprint[:type]}").blank?
        content_tag(:span, t("trln_argon.imprint_type.#{imprint[:type]}"), class: 'imprint-type')
      end

      def imprint_label(imprint)
        return if imprint[:label].blank?
        content_tag(:span, imprint[:label], class: 'imprint-label')
      end

      def imprint_value(imprint)
        return if imprint[:value].blank?
        imprint[:value]
      end

      def online_access_link_text(url_hrefs, url_text)
        if url_text && url_text.count == url_hrefs.count
          url_text
        else
          [t('trln_argon.online_access')] * url_hrefs.count
        end
      end

      def build_segment_links(segments_string, delimiter = ' -- ')
        segments = segments_string.split(delimiter)
        subject_hierarchy = array_to_hierarchy(segments, delimiter)
        zipped_segments = segments.zip(subject_hierarchy)
        linked_segments = zipped_segments.map { |segment| segment_begins_with_link(segment, delimiter) }.join
        linked_segments
      end

      def segment_begins_with_link(segment_hierarchy_pair, delimiter = ' -- ')
        params = { begins_with: { TrlnArgon::Fields::SUBJECTS_FACET => Array(segment_hierarchy_pair.last) } }
        params[:local_filter] = local_filter_applied?.to_s
        link_to(search_action_url(params), title: segment_hierarchy_pair.last) do
          segment_link_content(segment_hierarchy_pair, delimiter).html_safe
        end
      end

      def segment_link_content(segment_hierarchy_pair, delimiter = ' -- ')
        sr_only_segment = segment_hierarchy_pair.last.sub(segment_hierarchy_pair.first, '')
        if sr_only_segment.present?
          sr_span = content_tag(:span,
                                sr_only_segment.chomp(delimiter).to_s,
                                class: 'sr-only')
          apply_delim = delimiter
        end
        "#{sr_span}#{apply_delim}#{segment_hierarchy_pair.first}"
      end

      def array_to_hierarchy(args, delimiter = ' -- ')
        result = []
        args.each_with_object([]) do |part, acc|
          acc << part
          result << acc.join(delimiter)
        end
        result
      end
    end
  end
end