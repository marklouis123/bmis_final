import 'package:flutter/material.dart';

class Household with ChangeNotifier {
  int _count = 0;
  int _currentTab = 0;
  final Map _documentData = {};
  final Map _project = {
    "columns": [
      {
        "key": "family_identification",
        "label": "Family Identification",
        "data_type": "section",
        "child_columns": [
          {
            "key": "family_head_id",
            "label": "Family Head ID",
            "data_type": "text",
            "options": []
          },
          {
            "key": "household_type",
            "label": "Household Type",
            "data_type": "text",
            "options": ["Resident", "Institutional"]
          },
          {
            "key": "address",
            "label": "Address",
            "data_type": "subsection",
            "child_columns": [
              {
                "key": "latitude",
                "label": "Latitude",
                "data_type": "text",
                "options": []
              },
              {
                "key": "longitude",
                "label": "Longitude",
                "data_type": "text",
                "options": []
              },
              {
                "key": "house_no",
                "label": "House No.",
                "data_type": "text",
                "options": []
              },
              {
                "key": "street",
                "label": "Street",
                "data_type": "text",
                "options": []
              },
              {
                "key": "subdivision",
                "label": "Subdivision",
                "data_type": "text",
                "options": []
              },
              {
                "key": "purok",
                "label": "Purok",
                "data_type": "text",
                "options": []
              },
              {
                "key": "barangay",
                "label": "Barangay",
                "data_type": "text",
                "options": []
              },
              {
                "key": "municipality",
                "label": "Municipality",
                "data_type": "text",
                "options": []
              },
              {
                "key": "province",
                "label": "Province",
                "data_type": "text",
                "options": []
              }
            ]
          },
          {
            "key": "household_head",
            "label": "Head of Household",
            "data_type": "subsection",
            "child_columns": [
              {
                "key": "first_name",
                "label": "First Name",
                "data_type": "text",
                "options": []
              },
              {
                "key": "middle_name",
                "label": "Middle Name",
                "data_type": "text",
                "options": []
              },
              {
                "key": "last_name",
                "label": "Last Name",
                "data_type": "text",
                "options": []
              },
              {
                "key": "qualifier",
                "label": "Qualifier",
                "data_type": "text",
                "options": []
              }
            ]
          },
          {
            "key": "household_condition",
            "label": "Household Condition",
            "data_type": "text",
            "options": ["Owner (Main Family)", "Extended Family"]
          },
          {
            "key": "family_status",
            "label": "Family Status",
            "data_type": "text",
            "options": ["Active", "Inactive"]
          }
        ],
        "identifier": true
      },
      // {
      //   "key": "family_information",
      //   "label": "Family Information",
      //   "data_type": "section",
      //   "child_columns": [
      //     {
      //       "key": "household_size",
      //       "label": "No. of family members",
      //       "sublabel": "(Bilang ng Miyembro ng pamilya)",
      //       "data_type": "integer"
      //     },
      //     {
      //       "key": "head_year_first_resided",
      //       "label": "Family head’s year first resided in the brgy",
      //       "sublabel":
      //           "(Puno ng pamilya Unang taon nanirahan ang puno ng pamilya sa Brgy)",
      //       "data_type": "date"
      //     },
      //     {
      //       "key": "head_place_of_origin",
      //       "label": "Family head’s place of origin before living in the brgy",
      //       "sublabel":
      //           "(Lugar na Pinanggalingan ng Puno ng Pamilya- mun at prov)",
      //       "data_type": "text",
      //       "options": ["Active", "Inactive"]
      //     },
      //     {
      //       "key": "phones",
      //       "label": "Telephone service Provider",
      //       "data_type": "multi_entry",
      //       "child_columns": [
      //         {
      //           "key": "provider",
      //           "label": "Telephone/Cell-phone service provider",
      //           "data_type": "text"
      //         },
      //         {
      //           "key": "number",
      //           "label": "Contact number",
      //           "sublabel": "(Landline/Mobile)",
      //           "data_type": "text"
      //         },
      //       ]
      //     },
      //     {
      //       "key": "internet_providers",
      //       "label": "Internet service Provider",
      //       "data_type": "text"
      //     },
      //     {
      //       "key": "serviceable_vehicles",
      //       "label": "Serviceable Vehicles Owned",
      //       "data_type": "multi_entry",
      //       "child_columns": [
      //         {"key": "vehicle", "label": "Vehicle", "data_type": "text"},
      //         {"key": "count", "label": "Number", "data_type": "integer"}
      //       ]
      //     },
      //     {
      //       "key": "serviceable_appliances",
      //       "label": "Serviceable Appliances Owned",
      //       "data_type": "multi_entry",
      //       "child_columns": [
      //         {"key": "appliance", "label": "Appliance", "data_type": "text"},
      //         {"key": "count", "label": "Number", "data_type": "integer"}
      //       ]
      //     }
      //   ]
      // },
      // {
      //   "key": "health_information",
      //   "label": "Health Information",
      //   "data_type": "section",
      //   "child_columns": [
      //     {
      //       "key": "can_eat_three_times_a_day",
      //       "label": "Kumakain po ba kayo ng tatlong beses (meals) araw-araw?",
      //       "data_type": "boolean"
      //     },
      //     {
      //       "key": "plants_herbal_plant",
      //       "label": "Do you plant herbal plants?",
      //       "sublabel": "(May tanim na halamang gamot)",
      //       "data_type": "boolean",
      //       "conditional_question": {
      //         "1": [
      //           {
      //             "key": "plants_herbal_plant",
      //             "label": "If yes, what herbal plants?",
      //             "sublabel": "(Kung Oo, anong uri ng halamang gamot)?",
      //             "data_type": "text"
      //           }
      //         ]
      //       }
      //     },
      //     {
      //       "key": "plants_vegetable",
      //       "label": "Do you have a vegetable garden?",
      //       "sublabel": "(May tanim na gulay)?",
      //       "data_type": "boolean"
      //     },
      //     {
      //       "key": "uses_iodized_salt",
      //       "label": "Do you use iodized salt?",
      //       "sublabel": "(Gumagamit ng iodized salt)?",
      //       "data_type": "boolean"
      //     },
      //     {
      //       "key": "practices_family_planning",
      //       "label": "Do you practice Family Planning?",
      //       "sublabel": "(Gumagamit ng family planning)?",
      //       "data_type": "boolean",
      //       "conditional_question": {
      //         "1": [
      //           {
      //             "key": "family_planning",
      //             "label": "Family Planning Practiced",
      //             "data_type": "multiple",
      //             "options": [
      //               "Basal Body Temperature",
      //               "Cervical Mucus",
      //               "Lactational Amenorrhea Method",
      //               "Rhythm",
      //               "Standard Days Method",
      //               "Sympto-thermal Method",
      //               "Withdrawal",
      //               "Condom",
      //               "Depo Injection",
      //               "IUD",
      //               "Tubal Ligation",
      //               "Pills",
      //               "Vasectomy",
      //               "Subdermal implants"
      //             ]
      //           }
      //         ]
      //       }
      //     }
      //   ]
      // },
      // {
      //   "key": "environment_and_sanitation",
      //   "label": "Environment and Sanitation",
      //   "data_type": "section",
      //   "child_columns": [
      //     {
      //       "key": "toilet_facilities",
      //       "label": "Toilet Facilities",
      //       "sublabel": "Uri ng palikuran",
      //       "data_type": "object",
      //       "child_columns": [
      //         {
      //           "key": "type",
      //           "label": "Type",
      //           "data_type": "text",
      //           "options": [
      //             {
      //               "label": "Pour/Flush type with septic tank",
      //               "has_option": true
      //             },
      //             {
      //               "label": "Water sealed without septic tank",
      //               "has_option": true
      //             },
      //             {"label": "Covered Pit w/ ventilation", "has_option": true},
      //             {"label": "Open Pit w/out ventilation", "has_option": true},
      //             {"label": "Without Toilet", "has_option": false},
      //             {"label": "Others (Pail System, ec.)", "has_option": false},
      //             {
      //               "label":
      //                   "Pour/Flush toilet connected to septic tank and sewerage system",
      //               "has_option": false
      //             },
      //             {"label": "Overhung Latrine", "has_option": false}
      //           ]
      //         },
      //         {
      //           "key": "ownership",
      //           "label": "Ownership",
      //           "data_type": "text",
      //           "options": ["Owned Solely by family", "Shared", "Public"]
      //         }
      //       ]
      //     },
      //     {
      //       "key": "source_drinking_water",
      //       "label": "Source for Drinking Water and for Cooking",
      //       "data_type": "object",
      //       "variation": "multiple",
      //       "child_columns": [
      //         {
      //           "key": "type",
      //           "label": "Type",
      //           "data_type": "text",
      //           "options": [
      //             {
      //               "label": "Pour/Flush type with septic tank",
      //               "has_option": true
      //             },
      //             {
      //               "label": "Water sealed without septic tank",
      //               "has_option": true
      //             },
      //             {"label": "Covered Pit w/ ventilation", "has_option": true},
      //             {"label": "Open Pit w/out ventilation", "has_option": true},
      //             {"label": "Without Toilet", "has_option": false},
      //             {"label": "Others (Pail System, ec.)", "has_option": false},
      //             {
      //               "label":
      //                   "Pour/Flush toilet connected to septic tank and sewerage system",
      //               "has_option": false
      //             },
      //             {"label": "Overhung Latrine", "has_option": false}
      //           ]
      //         },
      //         {
      //           "key": "ownership",
      //           "label": "Ownership",
      //           "data_type": "text",
      //           "options": ["Owned Solely by family", "Shared", "Public"]
      //         }
      //       ]
      //     },
      //     {
      //       "key": "source_washing_water",
      //       "label": "Source for Washing and General Use",
      //       "data_type": "object",
      //       "variation": "multiple",
      //       "child_columns": [
      //         {
      //           "key": "type",
      //           "label": "Type",
      //           "data_type": "text",
      //           "options": [
      //             {
      //               "label": "Pour/Flush type with septic tank",
      //               "has_option": true
      //             },
      //             {
      //               "label": "Water sealed without septic tank",
      //               "has_option": true
      //             },
      //             {"label": "Covered Pit w/ ventilation", "has_option": true},
      //             {"label": "Open Pit w/out ventilation", "has_option": true},
      //             {"label": "Without Toilet", "has_option": false},
      //             {"label": "Others (Pail System, ec.)", "has_option": false},
      //             {
      //               "label":
      //                   "Pour/Flush toilet connected to septic tank and sewerage system",
      //               "has_option": false
      //             },
      //             {"label": "Overhung Latrine", "has_option": false}
      //           ]
      //         },
      //         {
      //           "key": "ownership",
      //           "label": "Ownership",
      //           "data_type": "text",
      //           "options": ["Owned Solely by family", "Shared", "Public"]
      //         }
      //       ]
      //     },
      //     {
      //       "key": "is_water_available_12h",
      //       "label": "Is water available at least 12hrs/day?",
      //       "data_type": "boolean"
      //     },
      //     {
      //       "key": "is_water_located_within_premises",
      //       "label": "Is water source located within premises?",
      //       "data_type": "boolean"
      //     },
      //     {
      //       "key": "source_of_electricity",
      //       "label": "Source of Electricity",
      //       "sublabel": "Gikuhaan sa kuhaan sa kuryente",
      //       "data_type": "text",
      //       "options": [
      //         "Barangay generator",
      //         "Battery",
      //         "Own generator",
      //         "Solar",
      //         "LEYECO IV",
      //         "None"
      //       ]
      //     },
      //     {
      //       "key": "lighting_used",
      //       "label": "Lighting Used",
      //       "sublabel": "Gigamit nga suga sa balay",
      //       "data_type": "text",
      //       "options": [
      //         "Battery",
      //         "Candle",
      //         "Solar power",
      //         "Kerosene (Gas)",
      //         "Generator",
      //         "With electric meter",
      //         "Without electric meter",
      //         "Others"
      //       ],
      //       "conditional_question": {
      //         "Others": [
      //           {
      //             "key": "lighting_used",
      //             "label": "Others, specify",
      //             "data_type": "text"
      //           }
      //         ]
      //       }
      //     },
      //     {
      //       "key": "house_ownership",
      //       "label": "House Ownership",
      //       "sublabel": "Pagpanag-iya sa balay",
      //       "data_type": "text",
      //       "options": [
      //         "Owned",
      //         "Rented",
      //         "Being Amortized (hinuhulugan)",
      //         "Being occupied for free with consent (nakatira ng libre na may pahintulot)",
      //         "Being Occupied for free without consent (nakatira ng libre na walang pahintulot)",
      //         "Caretaker (taga-bantay ng bahay)",
      //         "Family owned (pagmamay-ari ng pamilya o common)",
      //         "Government owned (pagmamay-ari ng gobyerno)"
      //       ]
      //     },
      //     {
      //       "key": "lot_ownership",
      //       "label": "Lot Ownership",
      //       "sublabel": "Pagpanag-iya sa yuta",
      //       "data_type": "text",
      //       "options": [
      //         "Owned",
      //         "Rented",
      //         "Being Amortized (hinuhulugan)",
      //         "Being occupied for free with consent (nakatira ng libre na may pahintulot)",
      //         "Being Occupied for free without consent (nakatira ng libre na walang pahintulot)",
      //         "Caretaker (taga-bantay ng bahay)",
      //         "Family owned (pagmamay-ari ng pamilya o common)",
      //         "Government owned (pagmamay-ari ng gobyerno)"
      //       ]
      //     },
      //     {
      //       "key": "house_structure",
      //       "label": "Structure of the house",
      //       "sublabel": "Hitsura sa balay",
      //       "data_type": "text",
      //       "options": [
      //         "Duplex",
      //         "Commercial/Industrial/Agricultural",
      //         "Extension",
      //         "Institutional Living Quarters Multi-Unit Residence",
      //         "Single House",
      //         "Other Housing Unit",
      //         "Not reported"
      //       ]
      //     },
      //     {
      //       "key": "external_housing_walls",
      //       "label": "External Housing Walls",
      //       "sublabel": "Bongbong sa balay",
      //       "data_type": "text",
      //       "options": [
      //         "Asbestos/Glass/Others",
      //         "Bamboo, Sawali, Cogon, Nipa",
      //         "Concrete/Brick/Stone",
      //         "Galvanized Iron, Aluminum",
      //         "Half-Concrete, Brick, Stone, HalfWood",
      //         "Makeshift, Salvaged, improvised",
      //         "Wood",
      //         "No walls/not reported"
      //       ]
      //     },
      //     {
      //       "key": "roof_construction_material",
      //       "label": "Roof construction Materials",
      //       "sublabel": "Atop sa balay",
      //       "data_type": "text",
      //       "options": [
      //         "Bamboo, Sawali, Cogon, Nipa",
      //         "Galvanized/iron",
      //         "Makeshift, Salvaged, improvised materials (ex.plastic/sack/tarpaulin)",
      //         "Mixed materials but more of cogon/nipa/anahaw",
      //         "Mixed materials but more of Galvanized/iron",
      //         "Cemented"
      //       ]
      //     },
      //     {
      //       "key": "floor_material_first_floor",
      //       "label": "Floor material - first floor",
      //       "sublabel": "Sawog sa first floor",
      //       "data_type": "text",
      //       "options": [
      //         "Bamboo",
      //         "Cement",
      //         "Cemented with linoleum",
      //         "Cemented with tiles",
      //         "Wood",
      //         "Soil",
      //         "Soil with linoleum",
      //         "others"
      //       ]
      //     },
      //     {
      //       "key": "cooking_facilities",
      //       "label": "Cooking facilities",
      //       "sublabel": "Gamit sa pagluto",
      //       "data_type": "multiple",
      //       "options": [
      //         "Charcoal o uling",
      //         "Electricity",
      //         "Kerosene (Gas)",
      //         "LPG",
      //         "Wood"
      //       ]
      //     },
      //     {
      //       "key": "garbage_disposal",
      //       "label": "Garbage disposal",
      //       "sublabel": "Paghipos basura",
      //       "data_type": "multiple",
      //       "options": [
      //         "Burned",
      //         "Collected by City",
      //         "Backyard Composting",
      //         "Open Pit",
      //         "River",
      //         "Thrown anywhere",
      //         "Waste Segregation",
      //         "Collected by Barangay",
      //         "Recycling/Reuse",
      //         "Burying"
      //       ]
      //     },
      //     {
      //       "key": "house_location",
      //       "label": "Location of House",
      //       "data_type": "text",
      //       "options": [
      //         "Along the Irrigation canal",
      //         "Along the Lakeshore",
      //         "Along the Railroad",
      //         "Along the Riverbank",
      //         "Along the Seashore",
      //         "Foot of Hill",
      //         "Foot of Mountain",
      //         "On a hill",
      //         "On the mountain",
      //         "Rice field",
      //         "National/Provincial road Along (0-10m)",
      //         "National/Provincial road Near(11-500 m)",
      //         "National/Provincial road Far (>500 m)",
      //         "Municipal road Along (0-10m)",
      //         "Municipal road Near(11-500 m)",
      //         "Municipal road Far (>500 m)",
      //         "Barangay road Along (0-10m)",
      //         "Barangay road Near(11-500 m)",
      //         "Barangay road Far (>500 m)",
      //         "Others (waiting shed, under the bridge, cart, etc.)"
      //       ]
      //     },
      //     {
      //       "key": "ecological_location",
      //       "label": "Location of house according to ecological setting",
      //       "data_type": "text",
      //       "options": ["Coastal", "Lowland", "Upland"]
      //     }
      //   ]
      // },
      // {
      //   "key": "peace_and_order",
      //   "label": "Peace and Order",
      //   "data_type": "section",
      //   "child_columns": [
      //     {
      //       "key": "family_member_crime_involvement",
      //       "label": "May miyembro ba sa pamilya nga naapil sakrimen?",
      //       "data_type": "text",
      //       "options": ["Meron", "Wala"],
      //       "conditional_question": {
      //         "Meron": [
      //           {
      //             "key": "crime_type",
      //             "label": "Kung naa, unsay klase sa krimen?",
      //             "data_type": "text",
      //             "options": [
      //               "Assault (sinugod/inatake)",
      //               "Battery (binugbog)",
      //               "False Imprisonment (nakulong ng walangkasalanan)",
      //               "Kidnapping (pagdukot)",
      //               "Homicide – crimes such as first and second degree, murder, involuntary manslaughter, and vehicular homicide (pagpatay)",
      //               "Rape, statutory rape, sexual assault and other offenses of a sexual nature",
      //               "Illegal Drugs"
      //             ],
      //             "dependency": {
      //               "key": "family_member_crime_involvement",
      //               "value": "Meron"
      //             }
      //           },
      //           {
      //             "key": "crime_location",
      //             "label": "Asa nahitabo ang krimen?",
      //             "data_type": "text",
      //             "dependency": {
      //               "key": "family_member_crime_involvement",
      //               "value": "Meron"
      //             }
      //           }
      //         ]
      //       }
      //     }
      //   ]
      // },
      // {
      //   "key": "agricultural_information",
      //   "label": "Agricultural Information",
      //   "data_type": "section",
      //   "child_columns": [
      //     {
      //       "key": "area_of_farmed_land",
      //       "label": "Kabuuang laki ng lupang sinasaka at lugar:",
      //       "data_type": "multi_entry",
      //       "child_columns": [
      //         {
      //           "key": "area",
      //           "label": "Lawak (Hektarya)",
      //           "data_type": "float"
      //         },
      //         {
      //           "key": "location",
      //           "label": "Lugar ng lupang sinasaka ",
      //           "sublabel": "(barangay,municipality, province)",
      //           "data_type": "text"
      //         },
      //         {
      //           "key": "status_of_ownership",
      //           "label": "Kalagayan sa Pag-aari ng Lupang Sinasaka",
      //           "sublabel": "Status of Ownership in the Farm (If Farming)",
      //           "data_type": "text",
      //           "options": ["Owned", "Leased", "Tenanted"]
      //         },
      //         {
      //           "key": "land_owner",
      //           "label": "Kapag tenant, sino ang may-ari ng lupa",
      //           "data_type": "text",
      //           "dependency": {
      //             "key": "status_of_ownership",
      //             "value": "Tenanted"
      //           }
      //         }
      //       ]
      //     },
      //     {
      //       "key": "agricultural_products",
      //       "label": "Agricultural/Fishery Products",
      //       "data_type": "multi_entry",
      //       "child_columns": [
      //         {
      //           "key": "product",
      //           "label": "Pananim/Produkto ",
      //           "sublabel": "(Product)",
      //           "data_type": "text"
      //         },
      //         {
      //           "key": "type_of_farm",
      //           "label": "Uri ng Lupang Sinasaka ",
      //           "sublabel": "(Type of Farm)",
      //           "data_type": "text",
      //           "can_specify_value": true,
      //           "options": [
      //             "Irrigated",
      //             "Rainfed",
      //             "Upland",
      //             "Lowland",
      //             "Others, specify"
      //           ]
      //         },
      //         {
      //           "key": "land_area",
      //           "label": "Kabuuang laki (Hektarya)",
      //           "data_type": "float"
      //         },
      //         {
      //           "key": "number_of_trees",
      //           "label": "Bilang ng Punong pananim",
      //           "data_type": "integer"
      //         },
      //         {
      //           "key": "location",
      //           "label": "Lugar",
      //           "data_type": "text",
      //           "options": ["Barangay", "Municipality", "Province"]
      //         }
      //       ]
      //     },
      //     {
      //       "key": "machineries_tally",
      //       "label": "Uri ng Kagamitan/makinarya sa pagsasaka",
      //       "data_type": "multi_entry",
      //       "child_columns": [
      //         {
      //           "key": "machinery",
      //           "label": "Machineries",
      //           "data_type": "text",
      //           "options": [
      //             "Rice mill",
      //             "4-wheel tractor",
      //             "Feedmill",
      //             "Sprayer (Knapsack)",
      //             "Grain Drying Facility",
      //             "Sprayer (Power)",
      //             "Warehouse",
      //             "Araro",
      //             "Thresher",
      //             "Suyod",
      //             "Reaper",
      //             "Waterpump",
      //             "Corn Sheller",
      //             "Hand tractor"
      //           ]
      //         },
      //         {"key": "count", "label": "Number", "data_type": "integer"}
      //       ]
      //     },
      //     {
      //       "key": "farm_animals_raised",
      //       "label": "Hayop na Pangkain na inaalagaan ",
      //       "sublabel": "(Farm Animals Raised)",
      //       "data_type": "multi_entry",
      //       "child_columns": [
      //         {
      //           "key": "animals",
      //           "label": "Animals",
      //           "data_type": "text",
      //           "options": [
      //             "Baboy (Barako)",
      //             "Baboy (Inahin)",
      //             "Baboy (Biik)",
      //             "Baboy (Grower)",
      //             "Baka",
      //             "Bibi",
      //             "Kabayo",
      //             "Kalabaw",
      //             "Kambing",
      //             "Tupa",
      //             "Pabo",
      //             "Pugo",
      //             "Itik",
      //             "Manok (Layer)",
      //             "Manok (Broiler)",
      //             "Manok (Native)",
      //             "Manok (Sasabungin)"
      //           ]
      //         },
      //         {"key": "count", "label": "Number", "data_type": "integer"}
      //       ]
      //     },
      //     {
      //       "key": "pet_animals",
      //       "label": "Pet Animals",
      //       "data_type": "multi_entry",
      //       "child_columns": [
      //         {
      //           "key": "animals",
      //           "label": "Animals",
      //           "data_type": "text",
      //           "options": [
      //             "Dog/Puppy",
      //             "Cat/Kitten",
      //             "Bird",
      //             "Rabbit",
      //             "Monkey",
      //             "Snake",
      //             "Fish"
      //           ]
      //         },
      //         {"key": "count", "label": "Number", "data_type": "integer"}
      //       ]
      //     }
      //   ]
      // },
      // {
      //   "key": "fishery_nipa_production_information",
      //   "label": "Fishery and Nipa Production Information",
      //   "data_type": "section",
      //   "child_columns": [
      //     {
      //       "key": "fisheries_information",
      //       "label": "Fisheries Information",
      //       "data_type": "multi_entry",
      //       "child_columns": [
      //         {
      //           "key": "type_of_fish_content",
      //           "label": "Uri ng laman ng Palaisdaan",
      //           "data_type": "text"
      //         },
      //         {
      //           "key": "number_of_fish_per_year",
      //           "label": "Bilang ng inaalagaan bawat taon",
      //           "data_type": "integer"
      //         },
      //         {
      //           "key": "status_of_fishery",
      //           "label": "Kalagayan ng palaisdaan",
      //           "data_type": "text",
      //           "options": ["Titulado", "Umuupa", "Tenant", "FLA"]
      //         },
      //         {
      //           "key": "type_of_water",
      //           "label": "Uri ng palaisdaang inaalagaan",
      //           "data_type": "text",
      //           "options": [
      //             "Alat (Marine water)",
      //             "Tabsing (Brackish water)",
      //             "Tabang (Fresh water)"
      //           ]
      //         },
      //         {
      //           "key": "type_of_fishery",
      //           "label": "Uri ng Palaisdaan",
      //           "data_type": "text",
      //           "options": ["Fish Cage", "Fish Pond"]
      //         },
      //         {
      //           "key": "land_area",
      //           "label": "Kabuuang laki ng palaisdaan",
      //           "data_type": "float"
      //         },
      //         {
      //           "key": "number_of_fish",
      //           "label": "Bilang ng pitak o units ng palaisdaan",
      //           "data_type": "integer"
      //         },
      //         {
      //           "key": "location",
      //           "label": "Lugar",
      //           "data_type": "text",
      //           "options": ["Barangay", "Municipality", "Province"]
      //         }
      //       ]
      //     },
      //     {
      //       "key": "fishing_vessel",
      //       "label": "Fishing vessel",
      //       "data_type": "multi_entry",
      //       "child_columns": [
      //         {
      //           "key": "vessel_type",
      //           "label": "Vessel type",
      //           "data_type": "text",
      //           "can_specify_value": true,
      //           "options": ["non- motorized", "motorized", "Others"],
      //           "conditional_question": {
      //             "Others": [
      //               {
      //                 "key": "vessel_type",
      //                 "label": "Others, specify",
      //                 "data_type": "text"
      //               }
      //             ]
      //           }
      //         },
      //         {
      //           "key": "vessel_count",
      //           "label": "Bilang",
      //           "data_type": "integer"
      //         },
      //         {
      //           "key": "material_used",
      //           "label": "Material Used",
      //           "data_type": "text",
      //           "options": ["Wood", "Fiber Glass", "Composite"]
      //         },
      //         {
      //           "key": "material_count",
      //           "label": "Bilang",
      //           "data_type": "integer"
      //         },
      //         {
      //           "key": "count_three_tonnage_below",
      //           "label": "Bilang ng 3 gross tonnage and below",
      //           "sublabel": "(Municipal)",
      //           "data_type": "integer"
      //         },
      //         {
      //           "key": "count_three_tonnage_above",
      //           "label": "Bilang ng 3 gross tonnage and above",
      //           "sublabel": "(Commercial)",
      //           "data_type": "integer"
      //         }
      //       ]
      //     },
      //     {
      //       "key": "nipa_production",
      //       "label": "Nipa Production",
      //       "data_type": "multi_entry",
      //       "child_columns": [
      //         {
      //           "key": "product",
      //           "label": "Product",
      //           "data_type": "text",
      //           "options": [
      //             "Tuba (gal)",
      //             "Lambanog (gal)",
      //             "Suka (gal)",
      //             "Pawid (piraso)"
      //           ]
      //         },
      //         {
      //           "key": "volume_quantity_per_year",
      //           "label": "Volume/ Quantity per year",
      //           "data_type": "float"
      //         },
      //         {
      //           "key": "location",
      //           "label": "Location",
      //           "data_type": "text",
      //           "options": ["Barangay", "Municipality", "Province"]
      //         }
      //       ]
      //     },
      //     {
      //       "key": "fishing_gear_classification",
      //       "label": "Classification of Fishing Gears",
      //       "data_type": "multi_entry",
      //       "child_columns": [
      //         {
      //           "key": "type_of_fishing_gear",
      //           "label": "Uri ng fishing gear",
      //           "data_type": "object_in_table",
      //           "options": [
      //             {"type": "Hook and Line", "name": "Simple hand line (Kawil)"},
      //             {
      //               "type": "Hook and Line",
      //               "name":
      //                   "Multiple hand line (Birabira,Pangawil, Pangundak,Panlagaw, Ug-ug)"
      //             },
      //             {
      //               "type": "Hook and Line",
      //               "name":
      //                   "Bottom set long line (Kitangna pang-ilalim ng dagat))"
      //             },
      //             {
      //               "type": "Hook and Line",
      //               "name": "Drift long line (kitangnaPaanodsaibabaw ng dagat)"
      //             },
      //             {
      //               "type": "Hook and Line",
      //               "name": "Troll line (Pahila, Salabay)"
      //             },
      //             {
      //               "type": "Hook and Line",
      //               "name": "Suqid jigs (Pamusit,Saranggat)"
      //             },
      //             {"type": "Seine Nets", "name": "Beach seine (pukot)"},
      //             {
      //               "type": "Seine Nets",
      //               "name": "Fry dozer or Gatherer (Salap)"
      //             },
      //             {
      //               "type": "Falling Gear",
      //               "name": "Cast Net (Dala, Bintay, Laya)"
      //             },
      //             {
      //               "type": "Scoop nets",
      //               "name": "Man push nets (Sudsod, sakag, Tunod, sagap)"
      //             },
      //             {"type": "Scoop nets", "name": "Scoop nets(Sirok, sigpaw)"},
      //             {
      //               "type": "Lift nets",
      //               "name": "Crab lift nets (Bintol ng Alimango)"
      //             },
      //             {
      //               "type": "Lift nets",
      //               "name": "Fish lift nets (Basnig/Bagnet)"
      //             },
      //             {"type": "Lift nets", "name": "New Look o Zapra"},
      //             {
      //               "type": "Lift nets",
      //               "name": "Shrimp lift nets (bintol ng hipon/sugpo)"
      //             },
      //             {"type": "Lift nets", "name": "Lever nets (Salambaw))"},
      //             {
      //               "type": "Pots and Traps",
      //               "name": "Fish pots (Bubo ng isda)"
      //             },
      //             {
      //               "type": "Pots and Traps",
      //               "name": "Crab pots (Bubo ng Alimango)"
      //             },
      //             {
      //               "type": "Pots and Traps",
      //               "name": "Squid pots (Bubo ng pusit)"
      //             },
      //             {
      //               "type": "Pots and Traps",
      //               "name": "Fyke nets (Skylab/Palos)"
      //             },
      //             {"type": "Pots and Traps", "name": "Filter nets (Lumpot)"},
      //             {
      //               "type": "Pots and Traps",
      //               "name": "Fish corrals (Baklad, Sagkad)"
      //             },
      //             {"type": "Pots and Traps", "name": "Set net (Lambaklad)"},
      //             {
      //               "type": "Pots and Traps",
      //               "name": "Barrier net (Likus, Pansara)"
      //             },
      //             {"type": "Gill Nets", "name": "Surface set gill net"},
      //             {
      //               "type": "Gill Nets",
      //               "name": "Drill gill net (panting paanod)"
      //             },
      //             {
      //               "type": "Gill Nets",
      //               "name": "Bottom set gill net (panting palubog)"
      //             },
      //             {
      //               "type": "Gill Nets",
      //               "name": "Trammel net (Transmaliyo,Pangbugiw)"
      //             },
      //             {"type": "Gill Nets", "name": "Encircling gill net"},
      //             {
      //               "type": "Gill Nets",
      //               "name": "Shrimp gill net (Galadgad,Pamasayan, Lait)"
      //             },
      //             {
      //               "type": "Miscellaneous Fishing gear",
      //               "name": "Spear (Pana)"
      //             },
      //             {
      //               "type": "Miscellaneous Fishing gear",
      //               "name": "Octopus/squid luring device (Pangati/Pamusit)"
      //             },
      //             {
      //               "type": "Miscellaneous Fishing gear",
      //               "name": "Gaff hook (Ganso, panikwat)"
      //             }
      //           ]
      //         },
      //         {"key": "count", "label": "Bilang", "data_type": "integer"}
      //       ]
      //     }
      //   ]
      // }
    ],
  };
  final Map _column = {
    "key": "family_identification",
    "label": "Family Identification",
    "data_type": "section",
    "child_columns": [
      {"key": "family_head_id", "label": "Family Head ID", "data_type": "text"},
      {
        "key": "household_type",
        "label": "Household Type",
        "data_type": "text",
        "options": ["Resident", "Institutional"]
      },
      {
        "key": "address",
        "label": "Address",
        "data_type": "subsection",
        "child_columns": [
          {"key": "latitude", "label": "Latitude", "data_type": "number"},
          {"key": "longitude", "label": "Longitude", "data_type": "number"},
          {"key": "house_no", "label": "House No.", "data_type": "text"},
          {"key": "street", "label": "Street", "data_type": "text"},
          {"key": "subdivision", "label": "Subdivision", "data_type": "text"},
          {"key": "purok", "label": "Purok", "data_type": "text"},
          {"key": "barangay", "label": "Barangay", "data_type": "text"},
          {"key": "municipality", "label": "Municipality", "data_type": "text"},
          {"key": "province", "label": "Province", "data_type": "text"}
        ]
      },
      {
        "key": "household_head",
        "label": "Head of Household",
        "data_type": "subsection",
        "child_columns": [
          {"key": "first_name", "label": "First Name", "data_type": "text"},
          {"key": "middle_name", "label": "Middle Name", "data_type": "text"},
          {"key": "last_name", "label": "Last Name", "data_type": "text"},
          {"key": "qualifier", "label": "Qualifier", "data_type": "text"}
        ]
      },
      {
        "key": "household_condition",
        "label": "Household Condition",
        "data_type": "text",
        "options": ["Owner (Main Family)", "Extended Family"]
      },
      {
        "key": "family_status",
        "label": "Family Status",
        "data_type": "text",
        "options": ["Active", "Inactive"]
      }
    ],
    "identifier": true
  };
  int get current => _currentTab;
  int get count => _count;
  List get columns => _project['columns'];
  Map get project => _project;
  Map get document => _documentData;

  List<String> get tabs =>
      ["Family Identification", "Family Information", "Health Information"];

  void increment() {
    _count++;
    notifyListeners();
  }

  void selectTab(index) {
    _currentTab = index;
    notifyListeners();
  }

  List getMultiEntryValue(section, subsection) {
    if (_documentData.containsKey(section) &&
        _documentData[section].containsKey(subsection)) {
      return _documentData[section][subsection];
    } else {
      return [];
    }
  }

  void onFieldChange(section, subsection, key, value, dataType) {
    if (!_documentData.containsKey(section)) {
      _documentData[section] = {};
    }
    if (subsection == null) {
      _documentData[section][key] = value;
    } else {
      if (!(_documentData[section] as Map).containsKey(subsection)) {
        if (dataType == "multi_entry") {
          _documentData[section][subsection] = [];
        } else {
          _documentData[section][subsection] = {};
        }
      }
      if (dataType == "multi_entry") {
        (_documentData[section][subsection] as List).add(value);
      } else {
        _documentData[section][subsection][key] = value;
      }
    }
    print(_documentData);
    notifyListeners();
  }
}
