CLASS zcl_add_entries_sub DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS addweekdays.
    METHODS addcc.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_add_entries_sub IMPLEMENTATION.

  METHOD addweekdays.
DATA dow TYPE  ZGYM_DOW.

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
  me->addcc(  ).
  ENDMETHOD.

ENDCLASS.
