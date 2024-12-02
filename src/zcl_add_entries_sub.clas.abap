CLASS zcl_add_entries_sub DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS addweekdays.
    METHODS addcc.
    METHODS addusers.
    METHODS addclasstypes.
    METHODS addmemtype.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_add_entries_sub IMPLEMENTATION.

  METHOD addweekdays.
    DATA dow TYPE  zgym_dow.

    dow = 'MON'.
    INSERT zgym_dow_vh FROM @dow.

    dow = 'TUE'.
    INSERT zgym_dow_vh FROM @dow.

    dow = 'WED'.
    INSERT zgym_dow_vh FROM @dow.

    dow = 'THU'.
    INSERT zgym_dow_vh FROM @dow.

    dow = 'FRI'.
    INSERT zgym_dow_vh FROM @dow.

    dow = 'SAT'.
    INSERT zgym_dow_vh FROM @dow.

    dow = 'SUN'.
    INSERT zgym_dow_vh FROM @dow.
    COMMIT WORK.
  ENDMETHOD.

  METHOD addcc.
    DATA lt_country_codes TYPE TABLE OF zgym_cntry_code.

    lt_country_codes = VALUE #(
      ( client = sy-mandt ccode = '1'    ccname = 'USA' )   " United States/Canada
      ( client = sy-mandt ccode = '7'    ccname = 'RUS' )   " Russia
      ( client = sy-mandt ccode = '20'   ccname = 'EGY' )   " Egypt
      ( client = sy-mandt ccode = '27'   ccname = 'ZAF' )   " South Africa
      ( client = sy-mandt ccode = '30'   ccname = 'GRC' )   " Greece
      ( client = sy-mandt ccode = '31'   ccname = 'NLD' )   " Netherlands
      ( client = sy-mandt ccode = '32'   ccname = 'BEL' )   " Belgium
      ( client = sy-mandt ccode = '33'   ccname = 'FRA' )   " France
      ( client = sy-mandt ccode = '34'   ccname = 'ESP' )   " Spain
      ( client = sy-mandt ccode = '36'   ccname = 'HUN' )   " Hungary
      ( client = sy-mandt ccode = '39'   ccname = 'ITA' )   " Italy
      ( client = sy-mandt ccode = '40'   ccname = 'ROU' )   " Romania
      ( client = sy-mandt ccode = '41'   ccname = 'CHE' )   " Switzerland
      ( client = sy-mandt ccode = '43'   ccname = 'AUT' )   " Austria
      ( client = sy-mandt ccode = '44'   ccname = 'GBR' )   " United Kingdom
      ( client = sy-mandt ccode = '45'   ccname = 'DNK' )   " Denmark
      ( client = sy-mandt ccode = '46'   ccname = 'SWE' )   " Sweden
      ( client = sy-mandt ccode = '47'   ccname = 'NOR' )   " Norway
      ( client = sy-mandt ccode = '48'   ccname = 'POL' )   " Poland
      ( client = sy-mandt ccode = '49'   ccname = 'DEU' )   " Germany
      ( client = sy-mandt ccode = '51'   ccname = 'PER' )   " Peru
      ( client = sy-mandt ccode = '52'   ccname = 'MEX' )   " Mexico
      ( client = sy-mandt ccode = '53'   ccname = 'CUB' )   " Cuba
      ( client = sy-mandt ccode = '54'   ccname = 'ARG' )   " Argentina
      ( client = sy-mandt ccode = '55'   ccname = 'BRA' )   " Brazil
      ( client = sy-mandt ccode = '56'   ccname = 'CHL' )   " Chile
      ( client = sy-mandt ccode = '57'   ccname = 'COL' )   " Colombia
      ( client = sy-mandt ccode = '58'   ccname = 'VEN' )   " Venezuela
      ( client = sy-mandt ccode = '60'   ccname = 'MYS' )   " Malaysia
      ( client = sy-mandt ccode = '61'   ccname = 'AUS' )   " Australia
      ( client = sy-mandt ccode = '62'   ccname = 'IDN' )   " Indonesia
      ( client = sy-mandt ccode = '63'   ccname = 'PHL' )   " Philippines
      ( client = sy-mandt ccode = '64'   ccname = 'NZL' )   " New Zealand
      ( client = sy-mandt ccode = '65'   ccname = 'SGP' )   " Singapore
      ( client = sy-mandt ccode = '66'   ccname = 'THA' )   " Thailand
      ( client = sy-mandt ccode = '81'   ccname = 'JPN' )   " Japan
      ( client = sy-mandt ccode = '82'   ccname = 'KOR' )   " South Korea
      ( client = sy-mandt ccode = '84'   ccname = 'VNM' )   " Vietnam
      ( client = sy-mandt ccode = '86'   ccname = 'CHN' )   " China
      ( client = sy-mandt ccode = '90'   ccname = 'TUR' )   " Turkey
      ( client = sy-mandt ccode = '91'   ccname = 'IND' )   " India
      ( client = sy-mandt ccode = '92'   ccname = 'PAK' )   " Pakistan
      ( client = sy-mandt ccode = '93'   ccname = 'AFG' )   " Afghanistan
      ( client = sy-mandt ccode = '94'   ccname = 'LKA' )   " Sri Lanka
      ( client = sy-mandt ccode = '95'   ccname = 'MMR' )   " Myanmar
      ( client = sy-mandt ccode = '98'   ccname = 'IRN' )   " Iran
      ( client = sy-mandt ccode = '211'  ccname = 'SSD' )   " South Sudan
      ( client = sy-mandt ccode = '212'  ccname = 'MAR' )   " Morocco
      ( client = sy-mandt ccode = '213'  ccname = 'DZA' )   " Algeria
      ( client = sy-mandt ccode = '216'  ccname = 'TUN' )   " Tunisia
      ( client = sy-mandt ccode = '218'  ccname = 'LBY' )   " Libya
      ( client = sy-mandt ccode = '220'  ccname = 'GMB' )   " Gambia
      ( client = sy-mandt ccode = '221'  ccname = 'SEN' )   " Senegal
      ( client = sy-mandt ccode = '222'  ccname = 'MRT' )   " Mauritania
      ( client = sy-mandt ccode = '223'  ccname = 'MLI' )   " Mali
      ( client = sy-mandt ccode = '224'  ccname = 'GIN' )   " Guinea
      ( client = sy-mandt ccode = '225'  ccname = 'CIV' )   " Ivory Coast
      ( client = sy-mandt ccode = '226'  ccname = 'BFA' )   " Burkina Faso
      ( client = sy-mandt ccode = '227'  ccname = 'NER' )   " Niger
      ( client = sy-mandt ccode = '228'  ccname = 'TGO' )   " Togo
      ( client = sy-mandt ccode = '229'  ccname = 'BEN' )   " Benin
      ( client = sy-mandt ccode = '230'  ccname = 'MUS' )   " Mauritius
      ( client = sy-mandt ccode = '231'  ccname = 'LBR' )   " Liberia
      ( client = sy-mandt ccode = '232'  ccname = 'SLE' )   " Sierra Leone
      ( client = sy-mandt ccode = '233'  ccname = 'GHA' )   " Ghana
      ( client = sy-mandt ccode = '234'  ccname = 'NGA' )   " Nigeria
      ( client = sy-mandt ccode = '235'  ccname = 'TCD' )   " Chad
      ( client = sy-mandt ccode = '236'  ccname = 'CAF' )   " Central African Republic
      ( client = sy-mandt ccode = '237'  ccname = 'CMR' )   " Cameroon
      ( client = sy-mandt ccode = '238'  ccname = 'CPV' )   " Cape Verde
      ( client = sy-mandt ccode = '239'  ccname = 'STP' )   " Sao Tome and Principe
      ( client = sy-mandt ccode = '240'  ccname = 'GNQ' )   " Equatorial Guinea
      ( client = sy-mandt ccode = '241'  ccname = 'GAB' )   " Gabon
      ( client = sy-mandt ccode = '242'  ccname = 'AGO' )   " Angola
      ( client = sy-mandt ccode = '243'  ccname = 'COD' )   " Democratic Republic of Congo
      ( client = sy-mandt ccode = '244'  ccname = 'COG' )   " Republic of Congo
      ( client = sy-mandt ccode = '245'  ccname = 'GNB' )   " Guinea-Bissau
      ( client = sy-mandt ccode = '246'  ccname = 'BES' )   " British Indian Ocean Territory
      ( client = sy-mandt ccode = '247'  ccname = 'ASC' )   " Ascension Island
      ( client = sy-mandt ccode = '248'  ccname = 'SYC' )   " Seychelles
      ( client = sy-mandt ccode = '249'  ccname = 'SDN' )   " Sudan
      ( client = sy-mandt ccode = '250'  ccname = 'RWA' )   " Rwanda
      ( client = sy-mandt ccode = '251'  ccname = 'ETH' )   " Ethiopia
      ( client = sy-mandt ccode = '252'  ccname = 'SOM' )   " Somalia
      ( client = sy-mandt ccode = '253'  ccname = 'DJI' )   " Djibouti
      ( client = sy-mandt ccode = '254'  ccname = 'KEN' )   " Kenya
      ( client = sy-mandt ccode = '255'  ccname = 'TZA' )   " Tanzania
      ( client = sy-mandt ccode = '256'  ccname = 'UGA' )   " Uganda
      ( client = sy-mandt ccode = '257'  ccname = 'BDI' )   " Burundi
      ( client = sy-mandt ccode = '258'  ccname = 'MOZ' )   " Mozambique
      ( client = sy-mandt ccode = '260'  ccname = 'ZMB' )   " Zambia
      ( client = sy-mandt ccode = '261'  ccname = 'MDG' )   " Madagascar
      ( client = sy-mandt ccode = '262'  ccname = 'REU' )   " Reunion
      ( client = sy-mandt ccode = '263'  ccname = 'MWI' )   " Malawi
      ( client = sy-mandt ccode = '264'  ccname = 'NAM' )   " Namibia
      ( client = sy-mandt ccode = '265'  ccname = 'LSO' )   " Lesotho
      ( client = sy-mandt ccode = '266'  ccname = 'BWA' )   " Botswana
      ( client = sy-mandt ccode = '267'  ccname = 'SWZ' )   " Eswatini
      ( client = sy-mandt ccode = '268'  ccname = 'LSO' )   " Lesotho
    ).

    "DELETE FROM zgym_cntry_code.
    INSERT zgym_cntry_code FROM TABLE @lt_country_codes.

  ENDMETHOD.



  METHOD if_oo_adt_classrun~main.
*    me->addusers(  ).
*    out->write( '10 users added successfully' ).
*    DELETE FROM zgym_class_type.
*    me->addclasstypes(  ).
*    out->write( 'Class Types added successfully' ).
*    me->addmemtype(  ).
*    DELETE FROM zgym_mem_type.
    out->write( 'Ran successfully' ).
  ENDMETHOD.

  METHOD addusers.
    DATA: lt_zgym_user TYPE TABLE OF zgym_user,
          ls_zgym_user TYPE zgym_user,  " Example client value
          lv_role      TYPE zgym_role,
          lv_country   TYPE land1 VALUE '40',  " Example country code
          lv_dob       TYPE zgym_dob,
          lv_email     TYPE zgym_email,
          lv_phone     TYPE zgym_phone_number.

    " Dummy role values
    DATA: lt_roles TYPE TABLE OF zgym_role.

    lt_roles = VALUE #( ( 'ADM' ) ( 'MEM' ) ( 'REC' ) ( 'INS' ) ).

    DO 10 TIMES.
      CLEAR ls_zgym_user.

      " Generate unique ID for each user
      ls_zgym_user-id = |{ sy-index }|.  " User ID will be from 000001 to 000050

      " Assign role randomly from the available roles
      READ TABLE lt_roles INDEX ( sy-index MOD 4 + 1 ) TRANSPORTING NO FIELDS.
      ls_zgym_user-role = lt_roles[ sy-index MOD 4 + 1 ].

      " Fill out other fields with dummy data.
      ls_zgym_user-ssn = |{ sy-index * 100000 + 12345 }|.  " Generating dummy SSN
      ls_zgym_user-name = |User { sy-index }|.  " User name as User 1, User 2, ...
      ls_zgym_user-dob = '19900101'.  " Fixed date of birth for all users, change if needed
      ls_zgym_user-email = |user{ sy-index }@gym.com|.  " Email: user1@gym.com, user2@gym.com, etc.
      ls_zgym_user-country_code = lv_country.
      ls_zgym_user-phone_number = |{ sy-index * 10000000 }|.  " Generating dummy phone numbers

      " Log information (createdby, createdat, etc.)
*      DATA(lv_date) = cl_abap_context_info=>get_system_date(  ).
*      ls_zgym_user-createdby = 'admin'.  " Assume admin as the creator
*      ls_zgym_user-createdat = .  " Current date
*      ls_zgym_user-lastchangedby = 'admin'.  " Last changed by
*      ls_zgym_user-lastchangedat = CONV #(lv_date).  " Last changed date
*      ls_zgym_user-locallastchanged = lv_date.  " Local change date

      " Append the generated row to the internal table
      APPEND ls_zgym_user TO lt_zgym_user.
    ENDDO.

    " Now insert the data into the table (using INSERT statement)
    LOOP AT lt_zgym_user INTO ls_zgym_user.
      INSERT zgym_user FROM @ls_zgym_user.
    ENDLOOP.

*    WRITE: '50 rows inserted into zgym_user table'.
  ENDMETHOD.

  METHOD addclasstypes.
    DATA: lt_zgym_class_type TYPE TABLE OF zgym_class_type,
          ls_zgym_class_type TYPE zgym_class_type,
          lv_uuid            TYPE sysuuid_x16,
          lv_name            TYPE zgym_class_name,
          lv_description     TYPE zgym_class_description,
          lv_duration        TYPE int2,
          lv_max_number      TYPE int4.

    " Define a few dummy gym class names and descriptions
    DATA: lt_class_names TYPE TABLE OF zgym_class_name.

    lt_class_names = VALUE #(
            ( 'Yoga' )
            ( 'Spin Class' )
            ( 'Pilates' )
            ( 'Zumba' )
            ( 'HIIT' ) ).

    DATA: lt_class_descriptions TYPE TABLE OF zgym_class_description.

    lt_class_descriptions = VALUE #(
            ( 'A relaxing class focused on mindfulness and stretching.' )
            ( 'High-intensity cycling session for endurance and stamina.' )
            ( 'A low-impact class focusing on core strength and flexibility.' )
            ( 'A fun, energetic dance-based workout.' )
            ( 'A full-body workout combining bodyweight exercises and cardio.' ) ).

    LOOP AT lt_class_names INTO lv_name.
      " Generate a unique UUID for each class
      TRY.
          lv_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
        CATCH cx_uuid_error.
          "handle exception
      ENDTRY.

      " Fetch the corresponding description from the description table
      READ TABLE lt_class_descriptions INDEX sy-tabix TRANSPORTING NO FIELDS.
      IF sy-subrc = 0.
        lv_description = lt_class_descriptions[ sy-tabix ].
      ENDIF.

      " Assign random duration (in minutes) and max number of participants
      lv_duration = 60 + ( sy-tabix MOD 3 ) * 15.  " Duration: 60, 75, 90 minutes
      lv_max_number = 15 + sy-tabix * 5.  " Max participants: 15, 20, 25, etc.

      CLEAR ls_zgym_class_type.

      " Fill the fields
      ls_zgym_class_type-client = 100.
      ls_zgym_class_type-id = lv_uuid.
      ls_zgym_class_type-name = lv_name.
      ls_zgym_class_type-description = lv_description.
      ls_zgym_class_type-duration = lv_duration.
      ls_zgym_class_type-max_number = lv_max_number.

      " Log information (createdby, createdat, etc.)
*      ls_zgym_class_type-createdby = 'admin'.  " Assume admin as the creator
*      ls_zgym_class_type-createdat = cl_abap_context_info=>get_system_date(  ).  " Current date
*      ls_zgym_class_type-lastchangedby = 'admin'.  " Last changed by
*      ls_zgym_class_type-lastchangedat = cl_abap_context_info=>get_system_date(  ).  " Last changed date
*      ls_zgym_class_type-locallastchanged = cl_abap_context_info=>get_system_date(  ).  " Local change date

      " Append the generated gym class to the internal table
      APPEND ls_zgym_class_type TO lt_zgym_class_type.
    ENDLOOP.

    " Insert the generated data into the table (using INSERT statement)
    LOOP AT lt_zgym_class_type INTO ls_zgym_class_type.
      INSERT zgym_class_type FROM @ls_zgym_class_type.
    ENDLOOP.

*WRITE: 'Gym classes inserted into zgym_class_type table'.

  ENDMETHOD.

  METHOD addmemtype.

    TYPES my_price TYPE P length 10 decimals 2.
    TYPES my_cuky TYPE C length 3.
    DATA: lt_zgym_mem_type TYPE TABLE OF zgym_mem_type,
          ls_zgym_mem_type TYPE zgym_mem_type,
    lv_uuid          type sysuuid_x16,
    lv_name          type zgym_membership_name,
    lv_description   type zgym_membership_description,
    lv_price         type my_price,
    lv_currency      TYPE my_cuky value 'RON',  " Currency is RON (Romanian Leu)
    lv_type          type zgym_membership_type.

    " Define the membership types, descriptions, and prices
    DATA: lt_membership_types TYPE TABLE OF zgym_membership_name.

    lt_membership_types = VALUE #(
            ( 'MORNING' )
            ( 'STANDARD' )
            ( 'PREMIUM' ) ).

    DATA: lt_descriptions TYPE TABLE OF zgym_membership_description.

    lt_descriptions = VALUE #(
            ( 'A discounted membership for morning classes only.' )
            ( 'Full access to the gym facilities and standard classes.' )
            ( 'Premium membership with all the classes.' ) ).

    DATA: lt_prices TYPE TABLE OF my_price .

    lt_prices = VALUE #(
    ( CONV my_price( 50 ) )  " Price for MORNING membership
    ( CONV my_price( 100 ) ) " Price for STANDARD membership
    ( CONV my_price( 200 ) ) " Price for PREMIUM membership
    ).

    LOOP AT lt_membership_types INTO lv_name.
      " Generate a unique UUID for each membership type
      TRY.
          lv_uuid = cl_system_uuid=>create_uuid_x16_static(  ).
        CATCH cx_uuid_error.
          "handle exception
      ENDTRY.

      " Fetch the corresponding description and price
      READ TABLE lt_descriptions INDEX sy-tabix TRANSPORTING NO FIELDS.
      IF sy-subrc = 0.
        lv_description = lt_descriptions[ sy-tabix ].
      ENDIF.

      " Fetch the corresponding price for the membership type
      READ TABLE lt_prices INDEX sy-tabix TRANSPORTING NO FIELDS.
      IF sy-subrc = 0.
        lv_price = lt_prices[ sy-tabix ].
      ENDIF.

      " Set the membership type based on the loop
      lv_type = lv_name.

      CLEAR ls_zgym_mem_type.

      " Fill the fields
      ls_zgym_mem_type-client = 100.
      ls_zgym_mem_type-id = lv_uuid.
      ls_zgym_mem_type-name = lv_name.
      ls_zgym_mem_type-price = lv_price.
      ls_zgym_mem_type-currency = lv_currency.
      ls_zgym_mem_type-type = lv_type.
      ls_zgym_mem_type-description = lv_description.

      " Append the generated membership type to the internal table
      APPEND ls_zgym_mem_type TO lt_zgym_mem_type.
    ENDLOOP.

    " Insert the generated data into the table (using INSERT statement)
    LOOP AT lt_zgym_mem_type INTO ls_zgym_mem_type.
      INSERT zgym_mem_type FROM @ls_zgym_mem_type.
    ENDLOOP.

*    WRITE: 'Membership types inserted into zgym_mem_type table'.

  ENDMETHOD.

ENDCLASS.
