module TrlnArgon
  module Fields
    # Rollup ID constant
    ID        = TrlnArgon::Field.new :id
    ROLLUP_ID = TrlnArgon::Field.new :rollup_id

    # Display field constants
    AUTHORS_DIRECTOR                 = TrlnArgon::Field.new :authors_director_a
    AUTHORS_DIRECTOR_MARC_SOURCE     = TrlnArgon::Field.new :authors_director_marc_source_a
    AUTHORS_MAIN                     = TrlnArgon::Field.new :authors_main_a
    AUTHORS_MAIN_CJK                 = TrlnArgon::Field.new :authors_main_cjk_v
    AUTHORS_MAIN_MARC_SOURCE         = TrlnArgon::Field.new :authors_main_marc_source_a
    AUTHORS_MAIN_RUS                 = TrlnArgon::Field.new :authors_main_rus_v
    AUTHORS_MAIN_VERN                = TrlnArgon::Field.new :authors_main_vern
    AUTHORS_MAIN_VERNACULAR_LANG     = TrlnArgon::Field.new :authors_main_vernacular_lang_a
    AUTHORS_OTHER                    = TrlnArgon::Field.new :authors_other_a
    AUTHORS_OTHER_CJK                = TrlnArgon::Field.new :authors_other_cjk_v
    AUTHORS_OTHER_MARC_SOURCE        = TrlnArgon::Field.new :authors_other_marc_source_a
    AUTHORS_OTHER_RUS                = TrlnArgon::Field.new :authors_other_rus_v
    AUTHORS_OTHER_VERN               = TrlnArgon::Field.new :authors_other_vern
    AUTHORS_OTHER_VERNACULAR_LANG    = TrlnArgon::Field.new :authors_other_vernacular_lang_a
    AUTHORS_SORT                     = TrlnArgon::Field.new :authors_sort_a
    AUTHORS_UNCONTROLLED             = TrlnArgon::Field.new :authors_uncontrolled_a
    AUTHORS_UNCONTROLLED_MARC_SOURCE = TrlnArgon::Field.new :authors_uncontrolled_marc_source_a
    CARTOGRAPHIC_DATA                = TrlnArgon::Field.new :cartographic_data_a
    CHARACTERISTICS_DIGITAL_FILE     = TrlnArgon::Field.new :characteristics_digital_file_a
    CHARACTERISTICS_PROJECTION       = TrlnArgon::Field.new :characteristics_projection_a
    CHARACTERISTICS_SOUND            = TrlnArgon::Field.new :characteristics_sound_a
    CHARACTERISTICS_VIDEO            = TrlnArgon::Field.new :characteristics_video_a
    COLLECTION                       = TrlnArgon::Field.new :collection_a
    COPYRIGHT                        = TrlnArgon::Field.new :copyright_a
    COPYRIGHT_STATEMENT              = TrlnArgon::Field.new :copyright_statement_a
    COPYRIGHT_YEAR                   = TrlnArgon::Field.new :copyright_year_a
    COPYRIGHT_YEAR_I                 = TrlnArgon::Field.new :copyright_year_i
    DESCRIPTION_DIGITAL_FILE         = TrlnArgon::Field.new :description_digital_file_a
    DESCRIPTION_GENERAL              = TrlnArgon::Field.new :description_general_a
    DESCRIPTION_ORGANIZATION         = TrlnArgon::Field.new :description_organization_a
    DESCRIPTION_PROJECTION           = TrlnArgon::Field.new :description_projection_a
    DESCRIPTION_SOUND                = TrlnArgon::Field.new :description_sound_a
    DESCRIPTION_VIDEO                = TrlnArgon::Field.new :description_video_a
    DESCRIPTION_VOLUMES              = TrlnArgon::Field.new :description_volumes_a
    DISTRIBUTION_STATEMENT           = TrlnArgon::Field.new :distribution_statement_a
    DISTRIBUTOR                      = TrlnArgon::Field.new :distributor_a
    EDITION                          = TrlnArgon::Field.new :edition_a
    EDITION_CJK                      = TrlnArgon::Field.new :edition_cjk_v
    EDITION_VERN                     = TrlnArgon::Field.new :edition_vern
    EDITION_VERNACULAR_LANG          = TrlnArgon::Field.new :edition_vernacular_lang_a
    FORMAT                           = TrlnArgon::Field.new :format_a
    FREQUENCY_CURRENT                = TrlnArgon::Field.new :frequency_current_a
    FREQUENCY_FORMER                 = TrlnArgon::Field.new :frequency_former_a
    IMPRINT                          = TrlnArgon::Field.new :imprint_a
    IMPRINT_TYPE                     = TrlnArgon::Field.new :imprint_type_a
    INSTITUTION                      = TrlnArgon::Field.new :institution_a
    ISBN                             = TrlnArgon::Field.new :isbn_a
    ISBN_NUMBER                      = TrlnArgon::Field.new :isbn_number_a
    ISBN_NUMBER_ISBN                 = TrlnArgon::Field.new :isbn_number_isbn
    ISBN_QUALIFYING_INFO             = TrlnArgon::Field.new :isbn_qualifying_info_a
    ISSN                             = TrlnArgon::Field.new :issn_a
    ISSN_LINKING                     = TrlnArgon::Field.new :issn_linking_a
    ISSN_LINKING_ISBN                = TrlnArgon::Field.new :issn_linking_isbn
    ISSN_PRIMARY                     = TrlnArgon::Field.new :issn_primary_a
    ISSN_PRIMARY_ISBN                = TrlnArgon::Field.new :issn_primary_isbn
    ISSN_SERIES                      = TrlnArgon::Field.new :issn_series_a
    ISSN_SERIES_ISBN                 = TrlnArgon::Field.new :issn_series_isbn
    ITEMS_BARCODE                    = TrlnArgon::Field.new :items_barcode_a
    ITEMS_CALL_NUMBER                = TrlnArgon::Field.new :items_call_number_a
    ITEMS_CALL_NUMBER_LCCN           = TrlnArgon::Field.new :items_call_number_lccn
    ITEMS_CALL_NUMBER_SCHEME         = TrlnArgon::Field.new :items_call_number_scheme_a
    ITEMS_CHECKOUTS                  = TrlnArgon::Field.new :items_checkouts_a
    ITEMS_COPY_NUMBER                = TrlnArgon::Field.new :items_copy_number_a
    ITEMS_DUE_DATE                   = TrlnArgon::Field.new :items_due_date_a
    ITEMS_ILS_ID                     = TrlnArgon::Field.new :items_ils_id_a
    ITEMS_ILS_NUMBER                 = TrlnArgon::Field.new :items_ils_number_a
    ITEMS_LCC_TOP                    = TrlnArgon::Field.new :items_lcc_top_a
    ITEMS_LOCATION                   = TrlnArgon::Field.new :items_location_a
    ITEMS_NOTE                       = TrlnArgon::Field.new :items_note_a
    ITEMS_STATUS                     = TrlnArgon::Field.new :items_status_a
    ITEMS_TYPE                       = TrlnArgon::Field.new :items_type_a
    ITEMS_VOLUME                     = TrlnArgon::Field.new :items_volume_a
    LANG_CODE                        = TrlnArgon::Field.new :lang_code_a
    LANGUAGE                         = TrlnArgon::Field.new :language_a
    LINKING_ADDED_ENTRY              = TrlnArgon::Field.new :linking_added_entry_a
    LINKING_HAS_SUPPLEMENT           = TrlnArgon::Field.new :linking_has_supplement_a
    LINKING_HAS_SUPPLEMENT_ISN       = TrlnArgon::Field.new :linking_has_supplement_isn_a
    LINKING_HOST_ITEM                = TrlnArgon::Field.new :linking_host_item_a
    LINKING_HOST_ITEM_TITLE          = TrlnArgon::Field.new :linking_host_item_title_a
    LINKING_ISN                      = TrlnArgon::Field.new :linking_isn_a
    LINKING_MAIN_SERIES              = TrlnArgon::Field.new :linking_main_series_a
    LINKING_SUPPLEMENT_TO            = TrlnArgon::Field.new :linking_supplement_to_a
    LINKING_SUPPLEMENT_TO_ISN        = TrlnArgon::Field.new :linking_supplement_to_isn_a
    LINKING_TRANSLATED_AS_TITLE      = TrlnArgon::Field.new :linking_translated_as_title_a
    LINKING_TRANSLATION_OF           = TrlnArgon::Field.new :linking_translation_of_a
    LINKING_TRANSLATION_OF_TITLE     = TrlnArgon::Field.new :linking_translation_of_title_a
    LINKINT_SUPPLEMENT_TO            = TrlnArgon::Field.new :linkint_supplement_to_a
    LOCAL_ID                         = TrlnArgon::Field.new :local_id
    MANUFACTURER                     = TrlnArgon::Field.new :manufacturer_a
    MANUFACTURER_STATEMENT           = TrlnArgon::Field.new :manufacturer_statement_a
    NOTES_ADDITIONAL                 = TrlnArgon::Field.new :notes_additional_a
    NOTES_ADDITIONAL_VERNACULAR_LANG = TrlnArgon::Field.new :notes_additional_vernacular_lang_a
    NOTES_INDEXED                    = TrlnArgon::Field.new :notes_indexed_a
    NOTES_INDEXED_CJK                = TrlnArgon::Field.new :notes_indexed_cjk_v
    NOTES_INDEXED_RUS                = TrlnArgon::Field.new :notes_indexed_rus_v
    NOTES_INDEXED_VERN               = TrlnArgon::Field.new :notes_indexed_vern
    NOTES_INDEXED_VERNACULAR_LANG    = TrlnArgon::Field.new :notes_indexed_vernacular_lang_a
    OCLC_NUMBER                      = TrlnArgon::Field.new :oclc_number
    OCLC_NUMBER_OLD                  = TrlnArgon::Field.new :oclc_number_old_a
    ORGANIZATION_ARRANGEMENT         = TrlnArgon::Field.new :organization_arrangement_a
    OWNER                            = TrlnArgon::Field.new :owner_a
    PRODUCER                         = TrlnArgon::Field.new :producer_a
    PRODUCTION_STATEMENT             = TrlnArgon::Field.new :production_statement_a
    PUBLISHER                        = TrlnArgon::Field.new :publisher_a
    PUBLISHER_ETC                    = TrlnArgon::Field.new :publisher_etc_a
    PUBLISHER_ETC_TYPE               = TrlnArgon::Field.new :publisher_etc_type_a
    PUBLISHER_IMPRINT                = TrlnArgon::Field.new :publisher_imprint_a
    PUBLISHER_MARC_SOURCE            = TrlnArgon::Field.new :publisher_marc_source_a
    PUBLISHER_NUMBER                 = TrlnArgon::Field.new :publisher_number_a
    PUBLISHER_VERNACULAR_LANG        = TrlnArgon::Field.new :publisher_vernacular_lang_a
    SERIES                           = TrlnArgon::Field.new :series_a
    SERIES_DIGITAL_FILE              = TrlnArgon::Field.new :series_digital_file_a
    SERIES_GENERAL                   = TrlnArgon::Field.new :series_general_a
    SERIES_ORGANIZATION              = TrlnArgon::Field.new :series_organization_a
    SERIES_PROJECTION                = TrlnArgon::Field.new :series_projection_a
    SERIES_SOUND                     = TrlnArgon::Field.new :series_sound_a
    SERIES_STATEMENT                 = TrlnArgon::Field.new :series_statement_a
    SERIES_STATEMENT_VERNACULAR_LANG = TrlnArgon::Field.new :series_statement_vernacular_lang_a
    SERIES_TITLE_INDEX               = TrlnArgon::Field.new :series_title_index_a
    SERIES_VIDEO                     = TrlnArgon::Field.new :series_video_a
    SERIES_VOLUMES                   = TrlnArgon::Field.new :series_volumes_a
    SOURCE                           = TrlnArgon::Field.new :source_a
    STATEMENT_OF_RESPONSIBILITY      = TrlnArgon::Field.new :statement_of_responsibility_a
    STATEMENT_OF_RESPONSIBILITY_CJK  = TrlnArgon::Field.new :statement_of_responsibility_cjk_v
    STATEMENT_OF_RESPONSIBILITY_RUS  = TrlnArgon::Field.new :statement_of_responsibility_rus_v
    STATEMENT_OF_RESPONSIBILITY_VERN = TrlnArgon::Field.new :statement_of_responsibility_vern
    STATEMENT_OF_RESPONSIBILITY_VERNACULAR_LANG =
      TrlnArgon::Field.new :statement_of_responsibility_vernacular_lang_a
    SUBJECTS                         = TrlnArgon::Field.new :subjects_a
    SYNDETICS_ID                     = TrlnArgon::Field.new :syndetics_id_a
    SYNDETICS_ISBN                   = TrlnArgon::Field.new :syndetics_isbn_a
    TITLE_ABBREVIATION               = TrlnArgon::Field.new :title_abbreviation_a
    TITLE_ABBRV                      = TrlnArgon::Field.new :title_abbrv_a
    TITLE_ALT                        = TrlnArgon::Field.new :title_alt_a
    TITLE_ALT_VERNACULAR_LANG        = TrlnArgon::Field.new :title_alt_vernacular_lang_a
    TITLE_ALTERNATE                  = TrlnArgon::Field.new :title_alternate_a
    TITLE_ANALYTICAL                 = TrlnArgon::Field.new :title_analytical_a
    TITLE_EARLIER                    = TrlnArgon::Field.new :title_earlier_a
    TITLE_JOURNAL                    = TrlnArgon::Field.new :title_journal_a
    TITLE_JOURNAL_CJK                = TrlnArgon::Field.new :title_journal_cjk_v
    TITLE_JOURNAL_VERN               = TrlnArgon::Field.new :title_journal_vern
    TITLE_JOURNAL_VERNACULAR_LANG    = TrlnArgon::Field.new :title_journal_vernacular_lang_a
    TITLE_LATER                      = TrlnArgon::Field.new :title_later_a
    TITLE_MAIN                       = TrlnArgon::Field.new :title_main
    TITLE_MAIN_CJK                   = TrlnArgon::Field.new :title_main_cjk_v
    TITLE_MAIN_RUS                   = TrlnArgon::Field.new :title_main_rus_v
    TITLE_MAIN_VERN                  = TrlnArgon::Field.new :title_main_vern
    TITLE_MAIN_VERNACULAR_LANG       = TrlnArgon::Field.new :title_main_vernacular_lang_a
    TITLE_TRANSLATION                = TrlnArgon::Field.new :title_translation_a
    TITLE_UNIFORM                    = TrlnArgon::Field.new :title_uniform_a
    UPC                              = TrlnArgon::Field.new :upc_a
    URL_HREF                         = TrlnArgon::Field.new :url_href_a
    URL_REL                          = TrlnArgon::Field.new :url_rel_a
    URL_TEXT                         = TrlnArgon::Field.new :url_text_a
    VOLUME_DATE_RANGE                = TrlnArgon::Field.new :volume_date_range_a

    # Facet field constants
    CALL_NUMBER_FACET    = TrlnArgon::Field.new :items_lcc_top_f
    FORMAT_FACET         = TrlnArgon::Field.new :format_f
    INSTITUTION_FACET    = TrlnArgon::Field.new :institution_f
    ITEMS_LOCATION_FACET = TrlnArgon::Field.new :items_location_f
    LANGUAGE_FACET       = TrlnArgon::Field.new :language_f
    SUBJECTS_FACET       = TrlnArgon::Field.new :subjects_f

    # Sort field constants
    PUBLICATION_DATE_SORT = TrlnArgon::Field.new :publication_year_isort_stored_single
    TITLE_SORT            = TrlnArgon::Field.new :title_sort_ssort_single

    def self.solr_field_names
      constants.map { |symbol| symbol.to_s.constantize }
    end
  end
end
