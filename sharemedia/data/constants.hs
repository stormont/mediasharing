
module Data.Constants
   where
   
import qualified Data.ByteString.Char8 as B


httpUrls =
   [ B.pack "http://"
   , B.pack "https:/"  -- intentionally shortened to be the same length as http://
   ]


imageMimeTypes =
   [ B.pack "image/jpeg"
   , B.pack "image/gif"
   , B.pack "image/png"
   , B.pack "image/bmp"
   ]


isoCountryCodes =
   [ B.pack "AF"   -- Afghanistan
   , B.pack "AL"   -- Albania
   , B.pack "DZ"   -- Algeria
   , B.pack "AS"   -- American Samoa
   , B.pack "AD"   -- Andorra
   , B.pack "AO"   -- Angola
   , B.pack "AI"   -- Anguilla
   , B.pack "AQ"   -- Antarctica
   , B.pack "AG"   -- Antigua and Barbuda
   , B.pack "AR"   -- Argentina
   , B.pack "AM"   -- Armenia
   , B.pack "AW"   -- Aruba
   , B.pack "AU"   -- Australia
   , B.pack "AT"   -- Austria
   , B.pack "AZ"   -- Azerbaijan
   , B.pack "BS"   -- Bahamas
   , B.pack "BH"   -- Bahrain
   , B.pack "BD"   -- Bangladesh
   , B.pack "BB"   -- Barbados
   , B.pack "BY"   -- Belarus
   , B.pack "BE"   -- Belgium
   , B.pack "BZ"   -- Belize
   , B.pack "BJ"   -- Benin
   , B.pack "BM"   -- Bermuda
   , B.pack "BT"   -- Bhutan
   , B.pack "BO"   -- Bolivia
   , B.pack "BA"   -- Bosnia and Herzegovina
   , B.pack "BW"   -- Botswana
   , B.pack "BR"   -- Brazil
   , B.pack "IO"   -- British Indian Ocean Territory
   , B.pack "VG"   -- British Virgin Islands
   , B.pack "BN"   -- Brunei
   , B.pack "BG"   -- Bulgaria
   , B.pack "BF"   -- Burkina Faso
   , B.pack "MM"   -- Burma (Myanmar)
   , B.pack "BI"   -- Burundi
   , B.pack "KH"   -- Cambodia
   , B.pack "CM"   -- Cameroon
   , B.pack "CA"   -- Canada
   , B.pack "CV"   -- Cape Verde
   , B.pack "KY"   -- Cayman Islands
   , B.pack "CF"   -- Central African Republic
   , B.pack "TD"   -- Chad
   , B.pack "CL"   -- Chile
   , B.pack "CN"   -- China
   , B.pack "CX"   -- Christmas Island
   , B.pack "CC"   -- Cocos (Keeling) Islands
   , B.pack "CO"   -- Colombia
   , B.pack "KM"   -- Comoros
   , B.pack "CK"   -- Cook Islands
   , B.pack "CR"   -- Costa Rica
   , B.pack "HR"   -- Croatia
   , B.pack "CU"   -- Cuba
   , B.pack "CY"   -- Cyprus
   , B.pack "CZ"   -- Czech Republic
   , B.pack "CD"   -- Democratic Republic of the Congo
   , B.pack "DK"   -- Denmark
   , B.pack "DJ"   -- Djibouti
   , B.pack "DM"   -- Dominica
   , B.pack "DO"   -- Dominican Republic
   , B.pack "EC"   -- Ecuador
   , B.pack "EG"   -- Egypt
   , B.pack "SV"   -- El Salvador
   , B.pack "GQ"   -- Equatorial Guinea
   , B.pack "ER"   -- Eritrea
   , B.pack "EE"   -- Estonia
   , B.pack "ET"   -- Ethiopia
   , B.pack "FK"   -- Falkland Islands
   , B.pack "FO"   -- Faroe Islands
   , B.pack "FJ"   -- Fiji
   , B.pack "FI"   -- Finland
   , B.pack "FR"   -- France
   , B.pack "PF"   -- French Polynesia
   , B.pack "GA"   -- Gabon
   , B.pack "GM"   -- Gambia
   , B.pack "GE"   -- Georgia
   , B.pack "DE"   -- Germany
   , B.pack "GH"   -- Ghana
   , B.pack "GI"   -- Gibraltar
   , B.pack "GR"   -- Greece
   , B.pack "GL"   -- Greenland
   , B.pack "GD"   -- Grenada
   , B.pack "GU"   -- Guam
   , B.pack "GT"   -- Guatemala
   , B.pack "GN"   -- Guinea
   , B.pack "GW"   -- Guinea-Bissau
   , B.pack "GY"   -- Guyana
   , B.pack "HT"   -- Haiti
   , B.pack "VA"   -- Holy See (Vatican City)
   , B.pack "HN"   -- Honduras
   , B.pack "HK"   -- Hong Kong
   , B.pack "HU"   -- Hungary
   , B.pack "IS"   -- Iceland
   , B.pack "IN"   -- India
   , B.pack "ID"   -- Indonesia
   , B.pack "IR"   -- Iran
   , B.pack "IQ"   -- Iraq
   , B.pack "IE"   -- Ireland
   , B.pack "IM"   -- Isle of Man
   , B.pack "IL"   -- Israel
   , B.pack "IT"   -- Italy
   , B.pack "CI"   -- Ivory Coast
   , B.pack "JM"   -- Jamaica
   , B.pack "JP"   -- Japan
   , B.pack "JE"   -- Jersey
   , B.pack "JO"   -- Jordan
   , B.pack "KZ"   -- Kazakhstan
   , B.pack "KE"   -- Kenya
   , B.pack "KI"   -- Kiribati
   , B.pack "KW"   -- Kuwait
   , B.pack "KG"   -- Kyrgyzstan
   , B.pack "LA"   -- Laos
   , B.pack "LV"   -- Latvia
   , B.pack "LB"   -- Lebanon
   , B.pack "LS"   -- Lesotho
   , B.pack "LR"   -- Liberia
   , B.pack "LY"   -- Libya
   , B.pack "LI"   -- Liechtenstein
   , B.pack "LT"   -- Lithuania
   , B.pack "LU"   -- Luxembourg
   , B.pack "MO"   -- Macau
   , B.pack "MK"   -- Macedonia
   , B.pack "MG"   -- Madagascar
   , B.pack "MW"   -- Malawi
   , B.pack "MY"   -- Malaysia
   , B.pack "MV"   -- Maldives
   , B.pack "ML"   -- Mali
   , B.pack "MT"   -- Malta
   , B.pack "MH"   -- Marshall Islands
   , B.pack "MR"   -- Mauritania
   , B.pack "MU"   -- Mauritius
   , B.pack "YT"   -- Mayotte
   , B.pack "MX"   -- Mexico
   , B.pack "FM"   -- Micronesia
   , B.pack "MD"   -- Moldova
   , B.pack "MC"   -- Monaco
   , B.pack "MN"   -- Mongolia
   , B.pack "ME"   -- Montenegro
   , B.pack "MS"   -- Montserrat
   , B.pack "MA"   -- Morocco
   , B.pack "MZ"   -- Mozambique
   , B.pack "NA"   -- Namibia
   , B.pack "NR"   -- Nauru
   , B.pack "NP"   -- Nepal
   , B.pack "NL"   -- Netherlands
   , B.pack "AN"   -- Netherlands Antilles
   , B.pack "NC"   -- New Caledonia
   , B.pack "NZ"   -- New Zealand
   , B.pack "NI"   -- Nicaragua
   , B.pack "NE"   -- Niger
   , B.pack "NG"   -- Nigeria
   , B.pack "NU"   -- Niue
   , B.pack "KP"   -- North Korea
   , B.pack "MP"   -- Northern Mariana Islands
   , B.pack "NO"   -- Norway
   , B.pack "OM"   -- Oman
   , B.pack "PK"   -- Pakistan
   , B.pack "PW"   -- Palau
   , B.pack "PA"   -- Panama
   , B.pack "PG"   -- Papua New Guinea
   , B.pack "PY"   -- Paraguay
   , B.pack "PE"   -- Peru
   , B.pack "PH"   -- Philippines
   , B.pack "PN"   -- Pitcairn Islands
   , B.pack "PL"   -- Poland
   , B.pack "PT"   -- Portugal
   , B.pack "PR"   -- Puerto Rico
   , B.pack "QA"   -- Qatar
   , B.pack "CG"   -- Republic of the Congo
   , B.pack "RO"   -- Romania
   , B.pack "RU"   -- Russia
   , B.pack "RW"   -- Rwanda
   , B.pack "BL"   -- Saint Barthelemy
   , B.pack "SH"   -- Saint Helena
   , B.pack "KN"   -- Saint Kitts and Nevis
   , B.pack "LC"   -- Saint Lucia
   , B.pack "MF"   -- Saint Martin
   , B.pack "PM"   -- Saint Pierre and Miquelon
   , B.pack "VC"   -- Saint Vincent and the Grenadines
   , B.pack "WS"   -- Samoa
   , B.pack "SM"   -- San Marino
   , B.pack "ST"   -- Sao Tome and Principe
   , B.pack "SA"   -- Saudi Arabia
   , B.pack "SN"   -- Senegal
   , B.pack "RS"   -- Serbia
   , B.pack "SC"   -- Seychelles
   , B.pack "SL"   -- Sierra Leone
   , B.pack "SG"   -- Singapore
   , B.pack "SK"   -- Slovakia
   , B.pack "SI"   -- Slovenia
   , B.pack "SB"   -- Solomon Islands
   , B.pack "SO"   -- Somalia
   , B.pack "ZA"   -- South Africa
   , B.pack "KR"   -- South Korea
   , B.pack "ES"   -- Spain
   , B.pack "LK"   -- Sri Lanka
   , B.pack "SD"   -- Sudan
   , B.pack "SR"   -- Suriname
   , B.pack "SJ"   -- Svalbard
   , B.pack "SZ"   -- Swaziland
   , B.pack "SE"   -- Sweden
   , B.pack "CH"   -- Switzerland
   , B.pack "SY"   -- Syria
   , B.pack "TW"   -- Taiwan
   , B.pack "TJ"   -- Tajikistan
   , B.pack "TZ"   -- Tanzania
   , B.pack "TH"   -- Thailand
   , B.pack "TL"   -- Timor-Leste
   , B.pack "TG"   -- Togo
   , B.pack "TK"   -- Tokelau
   , B.pack "TO"   -- Tonga
   , B.pack "TT"   -- Trinidad and Tobago
   , B.pack "TN"   -- Tunisia
   , B.pack "TR"   -- Turkey
   , B.pack "TM"   -- Turkmenistan
   , B.pack "TC"   -- Turks and Caicos Islands
   , B.pack "TV"   -- Tuvalu
   , B.pack "UG"   -- Uganda
   , B.pack "UA"   -- Ukraine
   , B.pack "AE"   -- United Arab Emirates
   , B.pack "GB"   -- United Kingdom
   , B.pack "US"   -- United States
   , B.pack "UY"   -- Uruguay
   , B.pack "VI"   -- US Virgin Islands
   , B.pack "UZ"   -- Uzbekistan
   , B.pack "VU"   -- Vanuatu
   , B.pack "VE"   -- Venezuela
   , B.pack "VN"   -- Vietnam
   , B.pack "WF"   -- Wallis and Futuna
   , B.pack "EH"   -- Western Sahara
   , B.pack "YE"   -- Yemen
   , B.pack "ZM"   -- Zambia
   , B.pack "ZW"   -- Zimbabwe
   , B.pack "AFG"  -- Afghanistan
   , B.pack "ALB"  -- Albania
   , B.pack "DZA"  -- Algeria
   , B.pack "ASM"  -- American Samoa
   , B.pack "AND"  -- Andorra
   , B.pack "AGO"  -- Angola
   , B.pack "AIA"  -- Anguilla
   , B.pack "ATA"  -- Antarctica
   , B.pack "ATG"  -- Antigua and Barbuda
   , B.pack "ARG"  -- Argentina
   , B.pack "ARM"  -- Armenia
   , B.pack "ABW"  -- Aruba
   , B.pack "AUS"  -- Australia
   , B.pack "AUT"  -- Austria
   , B.pack "AZE"  -- Azerbaijan
   , B.pack "BHS"  -- Bahamas
   , B.pack "BHR"  -- Bahrain
   , B.pack "BGD"  -- Bangladesh
   , B.pack "BRB"  -- Barbados
   , B.pack "BLR"  -- Belarus
   , B.pack "BEL"  -- Belgium
   , B.pack "BLZ"  -- Belize
   , B.pack "BEN"  -- Benin
   , B.pack "BMU"  -- Bermuda
   , B.pack "BTN"  -- Bhutan
   , B.pack "BOL"  -- Bolivia
   , B.pack "BIH"  -- Bosnia and Herzegovina
   , B.pack "BWA"  -- Botswana
   , B.pack "BRA"  -- Brazil
   , B.pack "IOT"  -- British Indian Ocean Territory
   , B.pack "VGB"  -- British Virgin Islands
   , B.pack "BRN"  -- Brunei
   , B.pack "BGR"  -- Bulgaria
   , B.pack "BFA"  -- Burkina Faso
   , B.pack "MMR"  -- Burma (Myanmar)
   , B.pack "BDI"  -- Burundi
   , B.pack "KHM"  -- Cambodia
   , B.pack "CMR"  -- Cameroon
   , B.pack "CAN"  -- Canada
   , B.pack "CPV"  -- Cape Verde
   , B.pack "CYM"  -- Cayman Islands
   , B.pack "CAF"  -- Central African Republic
   , B.pack "TCD"  -- Chad
   , B.pack "CHL"  -- Chile
   , B.pack "CHN"  -- China
   , B.pack "CXR"  -- Christmas Island
   , B.pack "CCK"  -- Cocos (Keeling) Islands
   , B.pack "COL"  -- Colombia
   , B.pack "COM"  -- Comoros
   , B.pack "COK"  -- Cook Islands
   , B.pack "CRC"  -- Costa Rica
   , B.pack "HRV"  -- Croatia
   , B.pack "CUB"  -- Cuba
   , B.pack "CYP"  -- Cyprus
   , B.pack "CZE"  -- Czech Republic
   , B.pack "COD"  -- Democratic Republic of the Congo
   , B.pack "DNK"  -- Denmark
   , B.pack "DJI"  -- Djibouti
   , B.pack "DMA"  -- Dominica
   , B.pack "DOM"  -- Dominican Republic
   , B.pack "ECU"  -- Ecuador
   , B.pack "EGY"  -- Egypt
   , B.pack "SLV"  -- El Salvador
   , B.pack "GNQ"  -- Equatorial Guinea
   , B.pack "ERI"  -- Eritrea
   , B.pack "EST"  -- Estonia
   , B.pack "ETH"  -- Ethiopia
   , B.pack "FLK"  -- Falkland Islands
   , B.pack "FRO"  -- Faroe Islands
   , B.pack "FJI"  -- Fiji
   , B.pack "FIN"  -- Finland
   , B.pack "FRA"  -- France
   , B.pack "PYF"  -- French Polynesia
   , B.pack "GAB"  -- Gabon
   , B.pack "GMB"  -- Gambia
   , B.pack "GEO"  -- Georgia
   , B.pack "DEU"  -- Germany
   , B.pack "GHA"  -- Ghana
   , B.pack "GIB"  -- Gibraltar
   , B.pack "GRC"  -- Greece
   , B.pack "GRL"  -- Greenland
   , B.pack "GRD"  -- Grenada
   , B.pack "GUM"  -- Guam
   , B.pack "GTM"  -- Guatemala
   , B.pack "GIN"  -- Guinea
   , B.pack "GNB"  -- Guinea-Bissau
   , B.pack "GUY"  -- Guyana
   , B.pack "HTI"  -- Haiti
   , B.pack "VAT"  -- Holy See (Vatican City)
   , B.pack "HND"  -- Honduras
   , B.pack "HKG"  -- Hong Kong
   , B.pack "HUN"  -- Hungary
   , B.pack "IS"   -- Iceland
   , B.pack "IND"  -- India
   , B.pack "IDN"  -- Indonesia
   , B.pack "IRN"  -- Iran
   , B.pack "IRQ"  -- Iraq
   , B.pack "IRL"  -- Ireland
   , B.pack "IMN"  -- Isle of Man
   , B.pack "ISR"  -- Israel
   , B.pack "ITA"  -- Italy
   , B.pack "CIV"  -- Ivory Coast
   , B.pack "JAM"  -- Jamaica
   , B.pack "JPN"  -- Japan
   , B.pack "JEY"  -- Jersey
   , B.pack "JOR"  -- Jordan
   , B.pack "KAZ"  -- Kazakhstan
   , B.pack "KEN"  -- Kenya
   , B.pack "KIR"  -- Kiribati
   , B.pack "KWT"  -- Kuwait
   , B.pack "KGZ"  -- Kyrgyzstan
   , B.pack "LAO"  -- Laos
   , B.pack "LVA"  -- Latvia
   , B.pack "LBN"  -- Lebanon
   , B.pack "LSO"  -- Lesotho
   , B.pack "LBR"  -- Liberia
   , B.pack "LBY"  -- Libya
   , B.pack "LIE"  -- Liechtenstein
   , B.pack "LTU"  -- Lithuania
   , B.pack "LUX"  -- Luxembourg
   , B.pack "MAC"  -- Macau
   , B.pack "MKD"  -- Macedonia
   , B.pack "MDG"  -- Madagascar
   , B.pack "MWI"  -- Malawi
   , B.pack "MYS"  -- Malaysia
   , B.pack "MDV"  -- Maldives
   , B.pack "MLI"  -- Mali
   , B.pack "MLT"  -- Malta
   , B.pack "MHL"  -- Marshall Islands
   , B.pack "MRT"  -- Mauritania
   , B.pack "MUS"  -- Mauritius
   , B.pack "MYT"  -- Mayotte
   , B.pack "MEX"  -- Mexico
   , B.pack "FSM"  -- Micronesia
   , B.pack "MDA"  -- Moldova
   , B.pack "MCO"  -- Monaco
   , B.pack "MNG"  -- Mongolia
   , B.pack "MNE"  -- Montenegro
   , B.pack "MSR"  -- Montserrat
   , B.pack "MAR"  -- Morocco
   , B.pack "MOZ"  -- Mozambique
   , B.pack "NAM"  -- Namibia
   , B.pack "NRU"  -- Nauru
   , B.pack "NPL"  -- Nepal
   , B.pack "NLD"  -- Netherlands
   , B.pack "ANT"  -- Netherlands Antilles
   , B.pack "NCL"  -- New Caledonia
   , B.pack "NZL"  -- New Zealand
   , B.pack "NIC"  -- Nicaragua
   , B.pack "NER"  -- Niger
   , B.pack "NGA"  -- Nigeria
   , B.pack "NIU"  -- Niue
   , B.pack "NFK"  -- Norfolk Island
   , B.pack "PRK"  -- North Korea
   , B.pack "MNP"  -- Northern Mariana Islands
   , B.pack "NOR"  -- Norway
   , B.pack "OMN"  -- Oman
   , B.pack "PAK"  -- Pakistan
   , B.pack "PLW"  -- Palau
   , B.pack "PAN"  -- Panama
   , B.pack "PNG"  -- Papua New Guinea
   , B.pack "PRY"  -- Paraguay
   , B.pack "PER"  -- Peru
   , B.pack "PHL"  -- Philippines
   , B.pack "PCN"  -- Pitcairn Islands
   , B.pack "POL"  -- Poland
   , B.pack "PRT"  -- Portugal
   , B.pack "PRI"  -- Puerto Rico
   , B.pack "QAT"  -- Qatar
   , B.pack "COG"  -- Republic of the Congo
   , B.pack "ROU"  -- Romania
   , B.pack "RUS"  -- Russia
   , B.pack "RWA"  -- Rwanda
   , B.pack "BLM"  -- Saint Barthelemy
   , B.pack "SHN"  -- Saint Helena
   , B.pack "KNA"  -- Saint Kitts and Nevis
   , B.pack "LCA"  -- Saint Lucia
   , B.pack "MAF"  -- Saint Martin
   , B.pack "SPM"  -- Saint Pierre and Miquelon
   , B.pack "VCT"  -- Saint Vincent and the Grenadines
   , B.pack "WSM"  -- Samoa
   , B.pack "SMR"  -- San Marino
   , B.pack "STP"  -- Sao Tome and Principe
   , B.pack "SAU"  -- Saudi Arabia
   , B.pack "SEN"  -- Senegal
   , B.pack "SRB"  -- Serbia
   , B.pack "SYC"  -- Seychelles
   , B.pack "SLE"  -- Sierra Leone
   , B.pack "SGP"  -- Singapore
   , B.pack "SVK"  -- Slovakia
   , B.pack "SVN"  -- Slovenia
   , B.pack "SLB"  -- Solomon Islands
   , B.pack "SOM"  -- Somalia
   , B.pack "ZAF"  -- South Africa
   , B.pack "KOR"  -- South Korea
   , B.pack "ESP"  -- Spain
   , B.pack "LKA"  -- Sri Lanka
   , B.pack "SDN"  -- Sudan
   , B.pack "SUR"  -- Suriname
   , B.pack "SJM"  -- Svalbard
   , B.pack "SWZ"  -- Swaziland
   , B.pack "SWE"  -- Sweden
   , B.pack "CHE"  -- Switzerland
   , B.pack "SYR"  -- Syria
   , B.pack "TWN"  -- Taiwan
   , B.pack "TJK"  -- Tajikistan
   , B.pack "TZA"  -- Tanzania
   , B.pack "THA"  -- Thailand
   , B.pack "TLS"  -- Timor-Leste
   , B.pack "TGO"  -- Togo
   , B.pack "TKL"  -- Tokelau
   , B.pack "TON"  -- Tonga
   , B.pack "TTO"  -- Trinidad and Tobago
   , B.pack "TUN"  -- Tunisia
   , B.pack "TUR"  -- Turkey
   , B.pack "TKM"  -- Turkmenistan
   , B.pack "TCA"  -- Turks and Caicos Islands
   , B.pack "TUV"  -- Tuvalu
   , B.pack "UGA"  -- Uganda
   , B.pack "UKR"  -- Ukraine
   , B.pack "ARE"  -- United Arab Emirates
   , B.pack "GBR"  -- United Kingdom
   , B.pack "USA"  -- United States
   , B.pack "URY"  -- Uruguay
   , B.pack "VIR"  -- US Virgin Islands
   , B.pack "UZB"  -- Uzbekistan
   , B.pack "VUT"  -- Vanuatu
   , B.pack "VEN"  -- Venezuela
   , B.pack "VNM"  -- Vietnam
   , B.pack "WLF"  -- Wallis and Futuna
   , B.pack "ESH"  -- Western Sahara
   , B.pack "YEM"  -- Yemen
   , B.pack "ZMB"  -- Zambia
   , B.pack "ZWE"  -- Zimbabwe
   ]
