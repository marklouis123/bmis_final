Map setup = {
  "columns": [
    {
      "parent_key": "",
      "key": "family_identification",
      "label": "FAMILY IDENTIFICATION",
      "hint_text": "",
      "data_type": "section",
      "question": "",
      "sublabel": "",
      "options": [],
      "conditional_fields": {},
      "initialValues": "",
      "child_columns": [
        {
          "parent_key": "family_identification",
          "key": "family_head_id",
          "label": "Family Head ID",
          "hint_text": "Enter Family Head ID",
          "data_type": "text",
          "question": "",
          "sublabel": "",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_identification",
          "key": "household_type",
          "label": "Household Type",
          "hint_text": "Household Type",
          "data_type": "text",
          "question": "",
          "sublabel": "",
          "options": ["Resident", "Institutional"],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_identification",
          "key": "address",
          "label": "Address:",
          "hint_text": "",
          "data_type": "subsection",
          "question": "",
          "sublabel": "",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "address",
              "key": "latitude",
              "label": "Latitude",
              "hint_text": "Enter Latitude",
              "data_type": "number",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "address",
              "key": "longitude",
              "label": "Longitude",
              "hint_text": "Enter Longitude",
              "data_type": "number",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "address",
              "key": "house_number",
              "label": "House Number",
              "hint_text": "Enter House Number",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "address",
              "key": "street_or_subdivision",
              "label": "Street or Subdivision",
              "hint_text": "Enter Street or Subdivision",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "address",
              "key": "purok",
              "label": "Purok",
              "hint_text": "Enter Purok",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "address",
              "key": "barangay",
              "label": "Barangay",
              "hint_text": "Enter Barangay",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "address",
              "key": "municipality",
              "label": "Municipality",
              "hint_text": "Enter Municipality",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "address",
              "key": "province",
              "label": "Province",
              "hint_text": "Enter Province",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "family_identification",
          "key": "pangalan_ng_puno_ng_pamilya",
          "label": "Pangalan ng Puno ng Pamilya:",
          "hint_text": "",
          "data_type": "subsection",
          "question": "",
          "sublabel": "",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "pangalan_ng_puno_ng_pamilya",
              "key": "first_name",
              "label": "First Name",
              "hint_text": "Enter First Name",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "pangalan_ng_puno_ng_pamilya",
              "key": "middle_name",
              "label": "Middle Name",
              "hint_text": "Enter Middle Name",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "pangalan_ng_puno_ng_pamilya",
              "key": "last_name",
              "label": "Last Name",
              "hint_text": "Enter Last Name",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "pangalan_ng_puno_ng_pamilya",
              "key": "qualifier",
              "label": "Qualifier",
              "hint_text": "Enter Qualifier",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "family_identification",
          "key": "household_condition",
          "label": "Household Condition:",
          "hint_text": "",
          "data_type": "text",
          "question": "Household Condition:",
          "sublabel": "",
          "options": ["Owner (Main Family)", "Extended Family"],
          "initialValues": "",
          "child_columns": [],
          "conditional_fields": {
            "Extended Family": [
              {
                "parent_key": "household_condition",
                "key": "household_condition_extended",
                "label": "Extended Family ID",
                "hint_text": "",
                "data_type": "text",
                "question": "HeadID of main Family",
                "sublabel": "",
                "options": [],
                "conditional_fields": {},
                "initialValues": "",
                "child_columns": []
              }
            ]
          }
        },
        {
          "parent_key": "family_identification",
          "key": "family_status",
          "label": "Family Status:",
          "hint_text": "",
          "data_type": "text",
          "question": "Family Status:",
          "sublabel": "",
          "options": ["Active", "Inactive"],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": []
        }
      ]
    },
    {
      "parent_key": "",
      "key": "family_information",
      "label": "FAMILY INFORMATION",
      "hint_text": "",
      "data_type": "section",
      "question": "",
      "sublabel": "",
      "options": [],
      "conditional_fields": {},
      "initialValues": "",
      "child_columns": [
        {
          "parent_key": "family_information",
          "key": "household_size",
          "label": "",
          "hint_text": "",
          "data_type": "number",
          "question": "1. No. of family members.",
          "sublabel": "(Bilang ng Miyembro ng pamilya.)",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_information",
          "key": "head_year_first_resided",
          "label": "",
          "hint_text": "",
          "data_type": "date",
          "question": "2. Family head's year first resided in the brgy.",
          "sublabel": "(Unang taon nanirahan ang puno ng pamilya sa Brgy.)",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_information",
          "key": "head_place_of_origin",
          "label": "",
          "hint_text": "",
          "data_type": "text",
          "question":
              "3. Family head’s place of origin before living in the brgy.",
          "sublabel":
              "(Lugar na Pinanggalingan ng Puno ng Pamilya - mun at prov.)",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_information",
          "key": "phones",
          "label": "4. Telephone/Cell-phone Service Provider",
          "hint_text": "Telephone/Cell-phone Service Provider",
          "data_type": "multi_entry",
          "question": "4. Telephone/Cell-phone Service Provider.",
          "sublabel": "",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "phones",
              "key": "phone_service_provider",
              "label": "Service Provider",
              "hint_text": "Enter Service Provider",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "phones",
              "key": "contact_number",
              "label": "Contact Number",
              "hint_text": "Enter Contact Number",
              "data_type": "phone",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "family_information",
          "key": "internet_providers",
          "label": "5. Internet Service Provider",
          "hint_text": "Internet Service Provider",
          "data_type": "multi_entry",
          "question": "5. Internet Service Provider.",
          "sublabel": "",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "internet_providers",
              "key": "internet_service_provider",
              "label": "Internet Service Provider",
              "hint_text": "Enter Internet Service Provider",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "family_information",
          "key": "serviceable_vehicles",
          "label": "6. Type and number of serviceable vehicle owned",
          "hint_text": "Type and number of serviceable vehicle owned",
          "data_type": "multi_entry",
          "question": "6.Type and number of serviceable vehicle owned.",
          "sublabel": "(Uri at bilang ng pag-aari ng sasakyan)",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "serviceable_vehicles",
              "key": "vehicle",
              "label": "Vehicle",
              "hint_text": "Enter Vehicle",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "serviceable_vehicles",
              "key": "vehicle_count",
              "label": "Quantity",
              "hint_text": "Enter Quantity",
              "data_type": "number",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "family_information",
          "key": "serviceable_appliances",
          "label": "7. Type and number of serviceable appliances owned",
          "hint_text": "Type and number of serviceable appliances owned",
          "data_type": "multi_entry",
          "question": "7. Type and number of serviceable appliances owned.",
          "sublabel": "(Uri at bilang ng kagamitang pangbahay.)",
          "options": [],
          "conditional_fields": {},
          "initialValues": [
            {"appliance": "Radio/Tape recorder/Stereo", "appliance_count": 0},
            {"appliance": "Television (TV)", "appliance_count": 0},
            {"appliance": "VCR/Karaoke/Videoke", "appliance_count": 0},
            {"appliance": "Video Games", "appliance_count": 0},
            {"appliance": "Airconditioner", "appliance_count": 0},
            {"appliance": "Electric Fan", "appliance_count": 0},
            {"appliance": "Exhaust Fan", "appliance_count": 0},
            {"appliance": "Flat Iron", "appliance_count": 0},
            {"appliance": "Refrigerator", "appliance_count": 0},
            {"appliance": "Freezer", "appliance_count": 0},
            {
              "appliance": "Water Heater/Electric Thermos/Airpot",
              "appliance_count": 0
            },
            {"appliance": "Rice cooker", "appliance_count": 0},
            {"appliance": "Oven Toaster", "appliance_count": 0},
            {"appliance": "Microwave oven", "appliance_count": 0},
            {"appliance": "Gas Range", "appliance_count": 0},
            {"appliance": "Washing Machine", "appliance_count": 0},
            {"appliance": "Dryer", "appliance_count": 0},
            {"appliance": "Computer/Laptop", "appliance_count": 0},
            {"appliance": "Printer", "appliance_count": 0}
          ],
          "child_columns": [
            {
              "parent_key": "serviceable_appliances",
              "key": "appliance",
              "label": "Appliance",
              "hint_text": "Enter Appliance",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "serviceable_appliances",
              "key": "appliance_count",
              "label": "Number",
              "hint_text": "Enter Number",
              "data_type": "number",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        }
      ]
    },
    {
      "parent_key": "",
      "key": "health_information",
      "label": "HEALTH INFORMATION",
      "hint_text": "Enter Text Here",
      "data_type": "section",
      "question": "HEALTH INFORMATION",
      "sublabel": "IMPORMASYON SA KALUSUGAN",
      "options": [],
      "conditional_fields": {},
      "initialValues": "",
      "child_columns": [
        {
          "parent_key": "health_information",
          "key": "can_eat_three_times_a_day",
          "label": "8. Kumakain po ba kayo ng tatlong beses (meals) araw-araw?",
          "hint_text": "Choose Option Here",
          "data_type": "text",
          "question":
              "8. Kumakain po ba kayo ng tatlong beses (meals) araw-araw?",
          "sublabel": "(Do you eat three times a day?)",
          "options": ["Yes", "No"],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "health_information",
          "key": "plants_herbal_plant",
          "label": "9. Do you plant herbal plants?",
          "hint_text": "Choose Option Here",
          "data_type": "text",
          "question": "9. Do you plant herbal plants?",
          "sublabel": "(May tanim na halamang gamot?)",
          "options": ["Yes", "No"],
          "conditional_fields": {
            "Yes": [
              {
                "parent_key": "plants_herbal_plant",
                "key": "plants_herbal_plant_true",
                "label": "10. If yes, what herbal plants?",
                "hint_text": "Enter Text Here",
                "data_type": "multi_entry",
                "question": "10. If yes, what herbal plants?",
                "sublabel": "(Kung Oo, anong uri ng halamang gamot)?",
                "options": [],
                "conditional_fields": {},
                "initialValues": "",
                "child_columns": [
                  {
                    "parent_key": "plants_herbal_plant_true",
                    "key": "plants_herbal_plant_true_name",
                    "label": "Herbal Plant",
                    "hint_text": "Enter Herbal Plant",
                    "data_type": "text",
                    "question": "Herbal Plant",
                    "sublabel": "Halamang Gamot",
                    "options": [],
                    "conditional_fields": {},
                    "initialValues": ""
                  }
                ]
              }
            ]
          },
          "initialValues": ""
        },
        {
          "parent_key": "health_information",
          "key": "plants_vegetable",
          "label": "11. Do you have a vegetable garden?",
          "hint_text": "Choose Option Here",
          "data_type": "text",
          "question": "11. Do you have a vegetable garden?",
          "sublabel": "(May tanim na gulay)?",
          "options": ["Yes", "No"],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "health_information",
          "key": "uses_iodized_salt",
          "label": "12. Do you use iodized salt?",
          "hint_text": "Choose Option Here",
          "data_type": "text",
          "question": "12. Do you use iodized salt?",
          "sublabel": "(Gumagamit ng iodized salt)?",
          "options": ["Yes", "No"],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "health_information",
          "key": "practices_family_planning",
          "label": "13. Do you practice Family Planning?",
          "hint_text": "Choose Option Here",
          "data_type": "text",
          "question": "13. Do you practice Family Planning?",
          "sublabel": "(Gumagamit ng family planning)?",
          "options": ["Yes", "No"],
          "conditional_fields": {
            "Yes": [
              {
                "parent_key": "practices_family_planning",
                "key": "practices_family_planning_text",
                "label": "14. If yes, what method/s of family planning?",
                "hint_text": "Enter Text Here",
                "data_type": "label",
                "question": "14. If yes, what method/s of family planning?",
                "sublabel":
                    "(Kung oo, anong paraan ng family planning ang ginagamit)",
                "options": [],
                "conditional_fields": {},
                "initialValues": ""
              },
              {
                "parent_key": "practices_family_planning",
                "key": "practices_family_planning_natural",
                "label": "Natural",
                "hint_text": "Enter Text Here",
                "data_type": "multiple_select",
                "question": "Natural",
                "sublabel": "Natural",
                "options": [
                  "Basal Body Temperature",
                  "Cervical Mucus",
                  "Lactational Amenorrhea Method",
                  "Rhythm",
                  "Standard Days Method",
                  "Sympto-thermal Method",
                  "Withdrawal"
                ],
                "conditional_fields": {},
                "initialValues": "",
                "child_columns": []
              },
              {
                "parent_key": "practices_family_planning",
                "key": "practices_family_planning_artificial",
                "label": "Artificial",
                "hint_text": "Enter Text Here",
                "data_type": "multiple_select",
                "question": "Artificial",
                "sublabel": "Artipisyal",
                "options": [
                  "Condom",
                  "Depo Injection",
                  "IUD",
                  "Tubal Ligation",
                  "Pills",
                  "Vasectomy",
                  "Subdermal implants"
                ],
                "conditional_fields": {},
                "initialValues": "",
                "child_columns": []
              }
            ]
          },
          "initialValues": ""
        }
      ]
    },
    {
      "parent_key": "",
      "key": "environment_and_sanitation",
      "label": "ENVIRONMENT AND SANITATION",
      "hint_text": "",
      "data_type": "section",
      "question": "",
      "sublabel": "",
      "options": [],
      "conditional_fields": {},
      "initialValues": "",
      "child_columns": [
        {
          "parent_key": "environment_and_sanitation",
          "key": "toilet_facilities",
          "label": "",
          "hint_text": "",
          "data_type": "text",
          "question": "15. Toilet Facilities",
          "sublabel": "(Uri ng palikuran)",
          "options": [
            "(1.1) Owned, Pour/Flush type with septic tank",
            "(1.2) Owned, water-sealed, without sewage/septic tank",
            "(1.3) Owned, covered-pit w/ ventilation",
            "(1.4) Owned, Open-pit w/out ventilation",
            "(2.1) Shared, Pour/Flush type with septic tank",
            "(2.2) Shared, water-sealed, without sewage/septic tank",
            "(2.3) Shared, covered-pit w/ ventilation",
            "(2.4) Shared, Open-pit w/out ventilation",
            "(3.1) Public, Pour/Flush type with septic tank",
            "(3.2) Public, water-sealed, without sewage/septic tank",
            "(3.3) Public, covered-pit w/ ventilation",
            "(3.4) Public, Open-pit w/out ventilation",
            "(5) Without Toilet",
            "(6) Others (Pail system etc.)",
            "(7) Pour/Flush toilet connected to septic tank and sewerage system",
            "(8) Overhung Latrine"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "source_drinking_water",
          "label": "",
          "hint_text": "Select Source",
          "data_type": "multiple_select",
          "question":
              "16. What is the Source/s of water for Drinking Water and for Cooking?",
          "sublabel": "",
          "options": [
            "1.1 Owned, Dug Well (Balon)",
            "1.2 Owned, Barangay water system",
            "1.3 Owned, Tubed/piped deep well",
            "1.4 Owned, Tubed/piped swallow well",
            "2.1 Shared, Dug Well (Balon)",
            "2.2 Shared, Barangay water system",
            "2.3 Shared, Tubed/piped deep well",
            "2.4 Shared, Tubed/piped swallow well",
            "3.1 Public, Dug Well (Balon)",
            "3.2 Public, Barangay water system",
            "3.3 Public, Tubed/piped deep well",
            "3.4 Public, Tubed/piped swallow well",
            "5 Spring, Lake, River & Rain",
            "6 Peddler",
            "7 Buy Mineral/Bottled Water",
            "8 Water District directly to household"
          ],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": []
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "source_washing_water",
          "label": "",
          "hint_text": "Select Source",
          "data_type": "multiple_select",
          "question":
              "17. What is the source/s of water Used for Washing and General Use?",
          "sublabel": "(Gamit sa paghugas, paglaba o pagligo)?",
          "options": [
            "1.1 Owned, Dug Well (Balon)",
            "1.2 Owned, Barangay water system",
            "1.3 Owned, Tubed/piped deep well",
            "1.4 Owned, Tubed/piped swallow well",
            "2.1 Shared, Dug Well (Balon)",
            "2.2 Shared, Barangay water system",
            "2.3 Shared, Tubed/piped deep well",
            "2.4 Shared, Tubed/piped swallow well",
            "3.1 Public, Dug Well (Balon)",
            "3.2 Public, Barangay water system",
            "3.3 Public, Tubed/piped deep well",
            "3.4 Public, Tubed/piped swallow well",
            "5 Spring, Lake, River & Rain",
            "6 Peddler",
            "7 Buy Mineral/Bottled Water",
            "8 Water District directly to household"
          ],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": []
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "is_water_available_12h",
          "label": "",
          "hint_text": "",
          "data_type": "boolean",
          "question": "18. Is water available at least 12hrs/day?",
          "sublabel": "",
          "options": ["Yes", "No"],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "is_water_located_within_premises",
          "label": "",
          "hint_text": "",
          "data_type": "boolean",
          "question": "19. Is water source located within premises?",
          "sublabel": "",
          "options": ["Yes", "No"],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "source_of_electricity",
          "label": "",
          "hint_text": "",
          "data_type": "text",
          "question": "20. Source of Electricity",
          "sublabel": "(Gikuhaan sa kuhaan sa kuryente)",
          "options": [
            "Barangay generator",
            "Battery",
            "Own generator",
            "Solar",
            "LEYECO IV",
            "None"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "lighting_used",
          "label": "",
          "hint_text": "",
          "data_type": "text",
          "question": "21. Lighting Used",
          "sublabel": "(Gigamit nga suga sa balay)",
          "options": [
            "Battery",
            "Candle",
            "Solar power",
            "Kerosene (Gas)",
            "Generator",
            "With electric meter",
            "Without electric meter",
            "Others"
          ],
          "conditional_fields": {
            "Others": {
              "parent_key": "lighting_used",
              "key": "lighting_used_others",
              "label": "",
              "hint_text": "Enter Text Here",
              "data_type": "text",
              "question": "If Others, specify:",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          },
          "initialValues": ""
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "house_ownership",
          "label": "",
          "hint_text": "",
          "data_type": "text",
          "question": "22. House Ownership",
          "sublabel": "(Pagpanag-iya sa balay)",
          "options": [
            "Owned",
            "Rented",
            "Being Amortized (hinuhulugan)",
            "Being occupied for free with consent (nakatira ng libre na may pahintulot)",
            "Being Occupied for free without consent (nakatira ng libre na walang pahintulot)",
            "Caretaker (taga-bantay ng bahay)",
            "Family owned (pagmamay-ari ng pamilya o common)",
            "Government owned (pagmamay-ari ng gobyerno)"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "lot_ownership",
          "label": "",
          "hint_text": "",
          "data_type": "text",
          "question": "23. Lot Ownership",
          "sublabel": "(Pagpanag-iya sa yuta)",
          "options": [
            "Owned",
            "Rented",
            "Being Amortized (hinuhulugan)",
            "Being occupied for free with consent (nakatira ng libre na may pahintulot)",
            "Being Occupied for free without consent (nakatira ng libre na walang pahintulot)",
            "Caretaker (taga-bantay ng bahay)",
            "Family owned (pagmamay-ari ng pamilya o common)",
            "Government owned (pagmamay-ari ng gobyerno)"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "house_structure",
          "label": "",
          "hint_text": "",
          "data_type": "text",
          "question": "24. Structure of the house",
          "sublabel": "(Hitsura sa balay)",
          "options": [
            "Duplex",
            "Commercial/Industrial/Agricultural",
            "Extension",
            "Institutional Living Quarters Multi-Unit Residence",
            "Single House",
            "Other Housing Unit",
            "Not reported"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "external_housing_walls",
          "label": "",
          "hint_text": "",
          "data_type": "text",
          "question": "25. External Housing Walls",
          "sublabel": "(Bongbong sa balay)",
          "options": [
            "Asbestos/Glass/Others",
            "Bamboo, Sawali, Cogon, Nipa",
            "Concrete/Brick/Stone",
            "Galvanized Iron, Aluminum",
            "Half-Concrete, Brick, Stone, HalfWood",
            "Makeshift, Salvaged, improvised",
            "Wood",
            "No walls/not reported"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "roof_construction_material",
          "label": "",
          "hint_text": "",
          "data_type": "text",
          "question": "26. Roof construction Materials",
          "sublabel": "(Atop sa balay)",
          "options": [
            "Bamboo, Sawali, Cogon, Nipa",
            "Galvanized/iron",
            "Makeshift, Salvaged, improvised materials (ex.plastic/sack/tarpaulin)",
            "Mixed materials but more of cogon/nipa/anahaw",
            "Mixed materials but more of Galvanized/iron",
            "Cemented"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "floor_material_first_floor",
          "label": "",
          "hint_text": "",
          "data_type": "text",
          "question": "27. Floor material - first floor",
          "sublabel": "(Sawog sa first floor)",
          "options": [
            "Bamboo",
            "Cement",
            "Cemented with linoleum",
            "Cemented with tiles",
            "Wood",
            "Soil",
            "Soil with linoleum",
            "others"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "cooking_facilities",
          "label": "",
          "hint_text": "Select facilities",
          "data_type": "multiple_select",
          "question": "28. Cooking facilities",
          "sublabel": "(Gamit sa pagluto)",
          "options": [
            "Charcoal o uling",
            "Electricity",
            "Kerosene (Gas)",
            "LPG",
            "Wood"
          ],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": []
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "garbage_disposal",
          "label": "",
          "hint_text": "Select disposal method",
          "data_type": "multiple_select",
          "question": "29. Garbage disposal",
          "sublabel": "(Paghipos basura)",
          "options": [
            "Burned",
            "Collected by City",
            "Backyard Composting",
            "Open Pit",
            "River",
            "Thrown anywhere",
            "Waste Segregation",
            "Collected by Barangay",
            "Recycling/Reuse",
            "Burying"
          ],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": []
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "house_location",
          "label": "",
          "hint_text": "Select Location",
          "data_type": "text",
          "question": "30. Location of House",
          "sublabel": "(Nahimutangan sa balay)",
          "options": [
            "Along the Irrigation canal",
            "Along the Lakeshore",
            "Along the Railroad",
            "Along the Riverbank",
            "Along the Seashore",
            "Foot of Hill",
            "Foot of Mountain",
            "On a hill",
            "On the mountain",
            "Rice field",
            "National/Provincial road Along (0-10m)",
            "National/Provincial road Near(11-500 m)",
            "National/Provincial road Far (>500 m)",
            "Municipal road Along (0-10m)",
            "Municipal road Near(11-500 m)",
            "Municipal road Far (>500 m)",
            "Barangay road Along (0-10m)",
            "Barangay road Near(11-500 m)",
            "Barangay road Far (>500 m)",
            "Others (waiting shed, under the bridge, cart, etc.)"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "environment_and_sanitation",
          "key": "ecological_location",
          "label": "",
          "hint_text": "",
          "data_type": "text",
          "question": "31. Location of house according to \"ecological setting",
          "sublabel": "",
          "options": ["Coastal", "Lowland", "Upland"],
          "conditional_fields": {},
          "initialValues": ""
        }
      ]
    },
    {
      "parent_key": "",
      "key": "family_members_information",
      "label": "FAMILY MEMBERS INFORMATION",
      "hint_text": "Enter Text Here",
      "data_type": "section",
      "question": "FAMILY MEMBERS INFORMATION",
      "sublabel": "IMPORMASYON NG MGA MIYEMBRO NG PAMILYA",
      "options": [],
      "conditional_fields": {},
      "initialValues": "",
      "child_columns": [
        {
          "parent_key": "name",
          "key": "first_name",
          "label": "1a. First Name",
          "hint_text": "Enter First Name",
          "data_type": "text",
          "question": "1a. First Name",
          "sublabel": "Pangalan",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "name",
          "key": "middle_name",
          "label": "1b. Middle Name",
          "hint_text": "Enter Middle Name",
          "data_type": "text",
          "question": "1b. Middle Name",
          "sublabel": "Gitnang Apelyido",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "name",
          "key": "last_name",
          "label": "1c. Last Name",
          "hint_text": "Enter Last Name",
          "data_type": "text",
          "question": "1c. Last Name",
          "sublabel": "Apelyido",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "relation_to_head",
          "label": "2. Relation to Head:",
          "hint_text": "Choose option here",
          "data_type": "text",
          "question": "2. Relation to Head:",
          "sublabel": "Kaugnayan sa puno ng pamilya",
          "options": [
            "Adopted",
            "Brother/Sister",
            "Brother-in-law",
            "Child",
            "Daughter/Son in-law",
            "Employee",
            "Grandchild",
            "Grandparent/s",
            "Head of the Family",
            "Live in/ cohabit",
            "Niece/Nephew",
            "Others",
            "Parent/s",
            "Parent-in-Law",
            "Relative",
            "Sister-in-law",
            "Spouse",
            "Step Son/ Daughter",
            "Step-Parent",
            "Student",
            "Not related",
            "Housemaid"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "status",
          "label": "3. Status:",
          "hint_text": "Choose status",
          "data_type": "text",
          "question": "3. Status:",
          "sublabel": "Kalagayan",
          "options": ["Active", "Transferred", "Died"],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "sex_or_gender",
          "label": "4. Sex/Gender:",
          "hint_text": "Choose gender",
          "data_type": "text",
          "question": "4. Sex/Gender:",
          "sublabel": "Kasarian",
          "options": [
            "Male",
            "Female",
            "Lesbian",
            "Gay",
            "Bisexual",
            "Transgender"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "birthday",
          "label": "5. Birthday:",
          "hint_text": "(mm/dd/yr)",
          "data_type": "date",
          "question": "5. Birthday:",
          "sublabel": "Kaarawan",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "id_number",
          "label": "6. Indicate the Senior Citizen ID No. , if applicable:",
          "hint_text": "Enter ID Number",
          "data_type": "text",
          "question": "6. Indicate the Senior Citizen ID No. , if applicable:",
          "sublabel": "Senior Citizen ID Number",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "place_of_birth",
          "label": "7. Place of Birth Municipal/City & Province:",
          "hint_text": "Enter Place of Birth",
          "data_type": "text",
          "question": "7. Place of Birth Municipal/City & Province:",
          "sublabel": "Lugar ng kapanganakan",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "registered_birth_at_civil_registrar",
          "label": "8. Registered Birth at Civil Registrar:",
          "hint_text": "Choose option here",
          "data_type": "text",
          "question": "8. Registered Birth at Civil Registrar:",
          "sublabel": "Rehistrado sa Civil Registrar?",
          "options": [
            "Registered Birth at Civil Registrar",
            "Birth not registered at Civil Registrar"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "registered_comelec_voter",
          "label": "9. Registered COMELEC Voter in the barangay:",
          "hint_text": "Choose option here",
          "data_type": "text",
          "question": "9. Registered COMELEC Voter in the barangay:",
          "sublabel": "Rehistradong Botante sa baranggay?",
          "options": [
            "Registered in the brgy",
            "Not registered in the brgy",
            "Not registered in any the brgy",
            "Not yet voter (age 0–17 yrs old)"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "civil_status",
          "label": "10. Civil Status:",
          "hint_text": "Choose civil status",
          "data_type": "text",
          "question": "10. Civil Status:",
          "sublabel": "Katayuang Sibil",
          "options": [
            "Married",
            "Single",
            "Solo Parent",
            "Not Married/Common law partner",
            "Widow",
            "Legally Separated",
            "Separated",
            "Divorced"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "solo_parent_id_number",
          "label": "11. Indicate the Solo Parent ID No., if applicable:",
          "hint_text": "Enter ID Number",
          "data_type": "text",
          "question": "11. Indicate the Solo Parent ID No., if applicable:",
          "sublabel": "Ipahiwatig ang Solo Parebt ID No. kung maaari",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "religion",
          "label": "12. Religion:",
          "hint_text": "Enter Religion",
          "data_type": "text",
          "question": "12. Religion:",
          "sublabel": "Relihiyon",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "skills",
          "label": "13. Skills:",
          "hint_text": "Skills",
          "data_type": "multi_entry",
          "question": "13. Skills:",
          "sublabel": "Abilidad",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "skills",
              "key": "skill_entry",
              "label": "Skill",
              "hint_text": "Enter Skill",
              "data_type": "text",
              "question": "Skill",
              "sublabel": "Abilidad",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "family_members_information",
          "key": "organization",
          "label": "14. Organizations:",
          "hint_text": "Organizations",
          "data_type": "multi_entry",
          "question": "14. Organizations:",
          "sublabel": "Organisasyon",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "organization",
              "key": "organization_name",
              "label": "Organization",
              "hint_text": "Enter Organization",
              "data_type": "text",
              "question": "Organization",
              "sublabel": "Organisasyon",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "family_members_information",
          "key": "ethnicity",
          "label": "Ethnicity",
          "hint_text": "Enter Ethnicity",
          "data_type": "text",
          "question": "15. Ethnicity:",
          "sublabel": "Etnisidad",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "citizenship",
          "label": "Citizenship",
          "hint_text": "Enter Citizenship",
          "data_type": "text",
          "question": "16. Citizenship:",
          "sublabel": "Pagkamamamayan",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "studying",
          "label": "17. Studying:",
          "hint_text": "Select option here",
          "data_type": "text",
          "question": "17. Studying:",
          "sublabel": "Nag-aaral",
          "options": ["Yes", "No"],
          "conditional_fields": {
            "Yes": [
              {
                "parent_key": "studying",
                "key": "studying_school",
                "label": "If yes, put name of school:",
                "hint_text": "Enter School",
                "data_type": "text",
                "question": "If yes, put name of school:",
                "sublabel": "Kung Oo, ilagay ang pangalan ng paaralan",
                "options": [],
                "conditional_fields": {},
                "initialValues": ""
              }
            ]
          },
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "educational_level",
          "label": "18. Educational Level:",
          "hint_text": "Enter Educational Level",
          "data_type": "text",
          "question": "18. Educational Level:",
          "sublabel": "Antas ng Edukasyon",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "status_schooling",
          "label": "19. Status of Schooling:",
          "hint_text": "Choose status",
          "data_type": "text",
          "question": "19. Status of Schooling:",
          "sublabel": "Katayuan ng Pag-aaral",
          "options": ["Graduate", "Undergrad", "Still Studying"],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "degree_or_course",
          "label": "20. Degree/Course:",
          "hint_text": "Enter Text Here",
          "data_type": "text",
          "question": "20. Degree/Course:",
          "sublabel": "Kurso",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "main_source_income",
          "label": "21. Main Source of Income:",
          "hint_text": "Enter Source of Income",
          "data_type": "text",
          "question": "21. Main Source of Income:",
          "sublabel": "Pangunahing Pinagmumulan ng Kita",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "status_of_work_15",
          "label": "22. Work status of ≥15 yrs old and unemployed:",
          "hint_text": "Choose status",
          "data_type": "text",
          "question": "22. Work status of ≥15 yrs old and unemployed:",
          "sublabel":
              "Katayuan sa trabaho ng ≥15 taong gulang at walang trabaho",
          "options": ["Actively seeking work", "Not actively seeking work"],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "status_of_work",
          "label": "23. Status of Work:",
          "hint_text": "Choose status",
          "data_type": "text",
          "question": "23. Status of Work:",
          "sublabel": "Katayuan ng trabaho",
          "options": [
            "Employer",
            "Wage & Salary worker",
            "Self-employed",
            "Unpaid family worker"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "ofw",
          "label": "24. OFW:",
          "hint_text": "Choose option here",
          "data_type": "text",
          "question": "24. OFW:",
          "sublabel": "OFW",
          "options": ["Yes", "No"],
          "conditional_fields": {
            "Yes": [
              {
                "parent_key": "ofw",
                "key": "ofw_place_of_work",
                "label": "If OFW, write the Country/Place of Work:",
                "hint_text": "Enter Place of Work",
                "data_type": "text",
                "question": "If OFW, write the Country/Place of Work:",
                "sublabel": "Kung OFW, isulat ang Bansa/Lugar ng Trabaho",
                "options": [],
                "conditional_fields": {},
                "initialValues": ""
              }
            ]
          },
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "other_source_income",
          "label": "25. Other Sources of Income:",
          "hint_text": "Enter Text Here",
          "data_type": "multi_entry",
          "question": "25. Other Sources of Income:",
          "sublabel": "Iba Pang Pinagmumulan ng Kita",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "other_source_income",
              "key": "other_source_income_entry",
              "label": "Source of Income",
              "hint_text": "Enter Source of Income",
              "data_type": "text",
              "question": "Source of Income",
              "sublabel": "Pinagmumulan ng Kita",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "family_members_information",
          "key": "monthly_income",
          "label": "26. Monthly Income:",
          "hint_text": "Enter Monthly Income",
          "data_type": "number",
          "question": "26. Monthly Income:",
          "sublabel": "Buwanang Kita",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "sickness",
          "label": "27. Sakit:",
          "hint_text": "Enter Text Here",
          "data_type": "multi_entry",
          "question": "27. Sakit:",
          "sublabel": "(Sickness)",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "sickness",
              "key": "sickness_name",
              "label": "Sickness",
              "hint_text": "Enter Sickness",
              "data_type": "text",
              "question": "Sickness",
              "sublabel": "Sakit",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "family_members_information",
          "key": "disability",
          "label": "28. Kapansanan:",
          "hint_text": "Enter Text Here",
          "data_type": "multi_entry",
          "question": "28. Kapansanan:",
          "sublabel": "(Disability)",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "disability",
              "key": "disability_entry",
              "label": "Disability",
              "hint_text": "Enter Disability",
              "data_type": "text",
              "question": "Disability",
              "sublabel": "Kapansanan",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "family_members_information",
          "key": "pwd_id_number",
          "label": "Indicate PWD ID No., if applicable:",
          "hint_text": "Enter ID Number",
          "data_type": "text",
          "question": "Indicate PWD ID No., if applicable:",
          "sublabel": "Ipahiwatig ang PWD ID No., kung naaangkop",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "health_insurance",
          "label": "29. Type of Health Insurance:",
          "hint_text": "Enter Text Here",
          "data_type": "multi_entry",
          "question": "29. Type of Health Insurance:",
          "sublabel": "Uri ng Health Insurance",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "health_insurance",
              "key": "health_insurance_type",
              "label": "Type of Health Insurance",
              "hint_text": "Choose type here",
              "data_type": "text",
              "question": "Type of Health Insurance",
              "sublabel": "Uri ng Health Insurance",
              "options": [
                "No health insurance",
                "PhilHealth: Employed-Government",
                "PhilHealth: Employed-Private",
                "Individually Paying Program",
                "Individually Paying Program-Organized Group",
                "Sponsored-NHTS",
                "Active member of Health maintenance",
                "Active member community/ cooperative health scheme Organization",
                "Active member private health insurance",
                "Dependent health insurance",
                "Local Health insurance Halimbawa: health insurance na ginagamit lang sa mga ospital ng probinsya o munisipyo",
                "Sponsored-LGU",
                "Philhealth member dependent",
                "Sponsored-NGA",
                "Sponsored – Private",
                "Lifetime member"
              ],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "family_members_information",
          "key": "migration_status",
          "label": "30. Migration Status:",
          "hint_text": "Choose status here",
          "data_type": "text",
          "question": "30. Migration Status:",
          "sublabel": "Katayuan ng Migration",
          "options": [
            "Non-migrant (resided in the brgy for > 5 years)",
            "Migrant (resided in the brgy at least 6 months)",
            "Transient (resided in the barangay less than 6 months)"
          ],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "health_and_nutrition_info",
          "label":
              "HEALTH AND NUTRITION INFORMATION FOR CHILDREN AGED 0-23 MONTHS",
          "hint_text": "Enter Text Here",
          "data_type": "section",
          "question":
              "HEALTH AND NUTRITION INFORMATION FOR CHILDREN AGED 0-23 MONTHS",
          "sublabel":
              "IMPORMASYON SA KALUSUGAN AT NUTRITION PARA SA MGA BATA NA 0-23 BUWAN",
          "options": [],
          "conditional_fields": {},
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "imunization_received",
          "label": "31. Type of Immunization Received (0-23 months):",
          "hint_text": "Select Immunization",
          "data_type": "multiple_select",
          "question": "31. Type of Immunization Received (0-23 months):",
          "sublabel": "Uri ng Pagbabakuna na Natanggap (0-23 buwan)",
          "options": [
            "BGC (0 mos.)",
            "Pentavalent 1 (1.5 mos.) ",
            "Pentavalent 2 (2.5 mos.) ",
            "Pentavalent 3 (3.5 mos.) ",
            "OPV 1 (1.5 mos.) ",
            "OPV 2 (2.5 mos.) ",
            "OPV 3 (3.5 mos.) ",
            "HVB 1 (0 mos.) ",
            "HVB 2 (1.5 mos.) ",
            "HVB 3 (3.5 mos.) ",
            "MCV (9 mos.) ",
            "MEASLES (12-15 mos.) ",
            "ROTA dose 2 (8 mos.)"
          ],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": []
        },
        {
          "parent_key": "family_members_information",
          "key": "dewormed",
          "label": "32. Dewormed:",
          "hint_text": "Choose option here",
          "data_type": "text",
          "question": "32. Dewormed:",
          "sublabel": "Dewormed",
          "options": ["Yes", "No"],
          "conditional_fields": {
            "Yes": [
              {
                "parent_key": "dewormed",
                "key": "dewormed_date",
                "label": "If yes, put the date last received:",
                "hint_text": "(mm/dd/yr)",
                "data_type": "date",
                "question": "If yes, put the date last received:",
                "sublabel": "Kung oo, ilagay ang petsa",
                "options": [],
                "conditional_fields": {},
                "initialValues": ""
              }
            ]
          },
          "initialValues": ""
        },
        {
          "parent_key": "family_members_information",
          "key": "micronutrient",
          "label": "33. Micronutrient:",
          "hint_text": "Enter Text Here",
          "data_type": "subsection",
          "question": "33. Micronutrient:",
          "sublabel": "Micronutrient",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "micronutrient",
              "key": "vitamine_a",
              "label": "Vitamine A",
              "hint_text": "Choose option here",
              "data_type": "text",
              "question": "Vitamine A",
              "sublabel": "Vitamine A",
              "options": ["Yes", "No"],
              "conditional_fields": {
                "Yes": [
                  {
                    "parent_key": "vitamine_a",
                    "key": "vitamine_a_date",
                    "label": "If yes, put the date last received:",
                    "hint_text": "(mm/dd/yr)",
                    "data_type": "date",
                    "question": "If yes, put the date last received:",
                    "sublabel": "Kung oo, ilagay ang petsa",
                    "options": [],
                    "conditional_fields": {},
                    "initialValues": ""
                  }
                ]
              },
              "initialValues": ""
            },
            {
              "parent_key": "micronutrient",
              "key": "iron",
              "label": "Iron",
              "hint_text": "Choose option here",
              "data_type": "text",
              "question": "Iron",
              "sublabel": "Iron",
              "options": ["Yes", "No"],
              "conditional_fields": {
                "Yes": [
                  {
                    "parent_key": "iron",
                    "key": "iron_date",
                    "label": "If yes, put the date last received:",
                    "hint_text": "(mm/dd/yr)",
                    "data_type": "date",
                    "question": "If yes, put the date last received:",
                    "sublabel": "Kung oo, ilagay ang petsa",
                    "options": [],
                    "conditional_fields": {},
                    "initialValues": ""
                  }
                ]
              },
              "initialValues": ""
            },
            {
              "parent_key": "micronutrient",
              "key": "micronutrient_powder",
              "label": "Using Micro Nutrient Powder",
              "hint_text": "Choose option here",
              "data_type": "text",
              "question": "Using Micro Nutrient Powder",
              "sublabel": "Gumagamit ng Micro Nutrient Powder",
              "options": ["Yes", "No"],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "micronutrient",
              "key": "iron_fortified_rice",
              "label": "Using Iron Fortified Rice",
              "hint_text": "Choose option here",
              "data_type": "text",
              "question": "Using Iron Fortified Rice",
              "sublabel": "Gumagamit ng Iron Fortified Rice",
              "options": ["Yes", "No"],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "family_members_information",
          "key": "exclusively_breastfed",
          "label": "34. Exclusively Breastfed",
          "hint_text": "Enter Text Here",
          "data_type": "subsection",
          "question": "34. Exclusively Breastfed",
          "sublabel": "Eksklusibong Pinasuso",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "exclusively_breastfed",
              "key": "first_month",
              "label": "First Month",
              "hint_text": "Choose option here",
              "data_type": "text",
              "question": "First Month",
              "sublabel": "Unang Buwan",
              "options": ["Yes", "No"],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "exclusively_breastfed",
              "key": "second_month",
              "label": "Second Month",
              "hint_text": "Choose option here",
              "data_type": "text",
              "question": "Second Month",
              "sublabel": "Pangalawang Buwan",
              "options": ["Yes", "No"],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "exclusively_breastfed",
              "key": "third_month",
              "label": "Third Month",
              "hint_text": "Choose option here",
              "data_type": "text",
              "question": "Third Month",
              "sublabel": "Ikatlong Buwan",
              "options": ["Yes", "No"],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "exclusively_breastfed",
              "key": "fourth_month",
              "label": "Fourth Month",
              "hint_text": "Choose option here",
              "data_type": "text",
              "question": "Fourth Month",
              "sublabel": "Pang-apat na Buwan",
              "options": ["Yes", "No"],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "exclusively_breastfed",
              "key": "fifth_month",
              "label": "Fifth Month",
              "hint_text": "Choose option here",
              "data_type": "text",
              "question": "Fifth Month",
              "sublabel": "Panglimang Buwan",
              "options": ["Yes", "No"],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "exclusively_breastfed",
              "key": "date_last_breastfed",
              "label": "Date last breastfeed",
              "hint_text": "(mm/dd/yr)",
              "data_type": "date",
              "question": "Date last breastfeed:",
              "sublabel": "Petsa ng huling pagpapasuso",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "family_members_information",
          "key": "feeding_status",
          "label": "35. Feeding Status (6 to 23 months):",
          "hint_text": "Choose status here",
          "data_type": "text",
          "question": "35. Feeding Status (6 to 23 months):",
          "sublabel": "Katayuan ng Pagpapakain (6 to 23 months)",
          "options": [
            "Exclusively Breastfeed",
            "Breastfeed + formula milk",
            "Formula milk only",
            "Breastfeed + complementary food",
            "Formula milk + complementary food"
          ],
          "conditional_fields": {},
          "initialValues": ""
        }
      ]
    },
    {
      "parent_key": "",
      "key": "peace_and_order",
      "label": "PEACE AND ORDER",
      "hint_text": "",
      "data_type": "section",
      "question": "",
      "sublabel": "",
      "options": [],
      "conditional_fields": {},
      "initialValues": "",
      "child_columns": [
        {
          "parent_key": "peace_and_order",
          "key": "family_member_crime_involvement",
          "label": "",
          "hint_text": "",
          "data_type": "text",
          "question": "May miyembro ba sa pamilya nga naapil sa krimen?",
          "sublabel": "",
          "options": ["Meron", "Wala"],
          "initialValues": "",
          "conditional_fields": {
            "Meron": [
              {
                "parent_key": "family_member_crime_involvement",
                "key": "crime_type",
                "label": "",
                "hint_text": "",
                "data_type": "text",
                "question": "37. Kung naa, unsay klase sa krimen?",
                "sublabel": "",
                "options": [
                  "Assault (sinugod/inatake)",
                  "Battery (binugbog)",
                  "False Imprisonment (nakulong ng walangkasalanan)",
                  "Kidnapping (pagdukot)",
                  "Homicide – crimes such as first and second degree, murder, involuntary manslaughter, and vehicular homicide (pagpatay)",
                  "Rape, statutory rape, sexual assault and other offenses of a sexual nature",
                  "Illegal Drugs"
                ],
                "conditional_fields": {},
                "initialValues": ""
              },
              {
                "parent_key": "family_member_crime_involvement",
                "key": "crime_location",
                "label": "Place",
                "hint_text": "Enter Place",
                "data_type": "text",
                "question": "38. Asa nahitabo ang krimen?",
                "sublabel": "",
                "options": [],
                "conditional_fields": {},
                "initialValues": ""
              }
            ]
          },
        }
      ]
    },
    {
      "parent_key": "",
      "key": "agricultural_information",
      "label": "AGRICULTURAL INFORMATION",
      "hint_text": "",
      "data_type": "section",
      "question": "",
      "sublabel": "",
      "options": [],
      "conditional_fields": {},
      "initialValues": "",
      "child_columns": [
        {
          "parent_key": "agricultural_information",
          "key": "area_of_farmed_land",
          "label": "39. Kabuuang laki ng lupang sinasaka at lugar:",
          "hint_text": "",
          "data_type": "multi_entry",
          "question": "Kabuuang laki ng lupang sinasaka at lugar:",
          "sublabel": "",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "area_of_farmed_land",
              "key": "area",
              "label": "Lawak (Hektarya)",
              "hint_text": "Enter Text Here",
              "data_type": "number",
              "question": "Lawak (Hektarya)",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "area_of_farmed_land",
              "key": "location",
              "label": "Lugar ng lupang sinasaka",
              "hint_text": "Enter Text Here",
              "data_type": "text",
              "question": "Lugar ng lupang sinasaka",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "area_of_farmed_land",
              "key": "status_of_ownership",
              "label": "Kalagayan sa Pag-aari ng Lupang Sinasaka",
              "hint_text": "",
              "data_type": "text",
              "question": "Kalagayan sa Pag-aari ng Lupang Sinasaka",
              "sublabel": "(Status of Ownership in the Farm (If Farming))",
              "options": ["Owned", "Leased", "Tenanted"],
              "conditional_fields": {
                "Tenanted": [
                  {
                    "parent_key": "status_of_ownership",
                    "key": "land_owner",
                    "label": "Kapag tenant, sino ang may-ari ng lupa",
                    "hint_text": "Enter Text Here",
                    "data_type": "text",
                    "question": "Kapag tenant, sino ang may-ari ng lupa",
                    "sublabel": "",
                    "options": [],
                    "conditional_fields": {},
                    "initialValues": ""
                  }
                ]
              },
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "agricultural_information",
          "key": "agricultural_products",
          "label": "Agricultural/Fishery Products",
          "hint_text": "",
          "data_type": "multi_entry",
          "question": "Agricultural/Fishery Products",
          "sublabel": "",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "agricultural_products",
              "key": "product",
              "label": "Pananim/Produkto",
              "hint_text": "Enter Text Here",
              "data_type": "text",
              "question": "40. Pananim/Produkto",
              "sublabel": "(Product)",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "agricultural_products",
              "key": "type_of_farm",
              "label": "Uri ng Lupang Sinasaka",
              "hint_text": "",
              "data_type": "text",
              "question": "41. Uri ng Lupang Sinasaka",
              "sublabel": "(Type of Farm)",
              "options": [
                "Irrigated",
                "Rainfed",
                "Upland",
                "Lowland",
                "Others, specify"
              ],
              "conditional_fields": {
                "Others, specify": [
                  {
                    "parent_key": "type_of_farm",
                    "key": "type_of_farm_others",
                    "label": "If Others, specify:",
                    "hint_text": "Enter Text Here",
                    "data_type": "text",
                    "question": "If Others, specify:",
                    "sublabel": "",
                    "options": [],
                    "conditional_fields": {},
                    "initialValues": ""
                  }
                ]
              },
              "initialValues": ""
            },
            {
              "parent_key": "agricultural_products",
              "key": "land_area_per_product",
              "label": "Lawak ng lupa bawat pananim:",
              "hint_text": "",
              "data_type": "number",
              "question": "42. Lawak ng lupa bawat pananim:",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "agricultural_products",
              "key": "land_area",
              "label": "Kabuuang laki (Hektarya)",
              "hint_text": "Enter Text Here",
              "data_type": "number",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "agricultural_products",
              "key": "number_of_trees",
              "label": "Bilang ng Punong pananim",
              "hint_text": "Enter Text Here",
              "data_type": "number",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "agricultural_products",
              "key": "location",
              "label": "43. Lugar",
              "hint_text": "",
              "data_type": "text",
              "question": "43. Lugar",
              "sublabel": "(Brgy/Mun/Prov)",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "agricultural_information",
          "key": "machineries_tally",
          "label": "44. Uri ng Kagamitan/makinarya sa pagsasaka",
          "hint_text": "",
          "data_type": "multi_entry",
          "question": "44. Uri ng Kagamitan/makinarya sa pagsasaka",
          "sublabel": "(Agricultural Machineries/Equipment/ToolsOwned)",
          "options": [],
          "conditional_fields": {},
          "child_columns": [
            {
              "parent_key": "machineries_tally",
              "key": "machinery",
              "label": "Machinery",
              "hint_text": "Enter Machinery",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [
                "Rice mill",
                "4-wheel tractor",
                "Feedmill",
                "Sprayer (Knapsack)",
                "Grain Drying Facility",
                "Sprayer (Power)",
                "Warehouse",
                "Araro",
                "Thresher",
                "Suyod",
                "Reaper",
                "Waterpump",
                "Corn Sheller",
                "Hand tractor",
              ],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "machineries_tally",
              "key": "machinery_count",
              "label": "Number",
              "hint_text": "Enter Number",
              "data_type": "number",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "agricultural_information",
          "key": "farm_animals_raised",
          "label": "45. Hayop na Pangkain na inaalagaan",
          "hint_text": "",
          "data_type": "multi_entry",
          "question": "45. Hayop na Pangkain na inaalagaan",
          "sublabel": "(Farm Animals Raised)",
          "options": [],
          "conditional_fields": {},
          "child_columns": [
            {
              "parent_key": "farm_animals_raised",
              "key": "farm_animal",
              "label": "Farm Animal",
              "hint_text": "Enter Animal",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [
                "Baboy (Barako)",
                "Baboy (Inahin)",
                "Baboy (Biik)",
                "Baboy (Grower)",
                "Baka",
                "Bibi",
                "Kabayo",
                "Kalabaw",
                "Kambing",
                "Tupa",
                "Pabo",
                "Pugo",
                "Itik",
                "Manok (Layer)",
                "Manok (Broiler)",
                "Manok (Native)",
                "Manok (Sasabungin)"
              ],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "farm_animals_raised",
              "key": "farm_animal_count",
              "label": "Number",
              "hint_text": "Enter Number",
              "data_type": "number",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "agricultural_information",
          "key": "pet_animals",
          "label": "46. Pet Animals",
          "hint_text": "",
          "data_type": "multi_entry",
          "question": "46. Pet Animals",
          "sublabel": "",
          "options": [],
          "conditional_fields": {},
          "child_columns": [
            {
              "parent_key": "pet_animals",
              "key": "pet_animal",
              "label": "Pet Animal",
              "hint_text": "Enter Animal",
              "data_type": "text",
              "question": "",
              "sublabel": "",
              "options": [
                "Dog/Puppy",
                "Cat/Kitten",
                "Bird",
                "Rabbit",
                "Monkey",
                "Snake",
                "Fish"
              ],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "pet_animals",
              "key": "pet_animal_count",
              "label": "Number",
              "hint_text": "Enter Number",
              "data_type": "number",
              "question": "",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        }
      ]
    },
    {
      "parent_key": "",
      "key": "fishery_and_nipa_production_information",
      "label": "FISHERY AND NIPA PRODUCTION INFORMATION",
      "hint_text": "",
      "data_type": "section",
      "question": "",
      "sublabel": "",
      "options": [],
      "conditional_fields": {},
      "initialValues": "",
      "child_columns": [
        {
          "parent_key": "fishery_and_nipa_production_information",
          "key": "fisheries_information",
          "label": "47. Fisheries Information",
          "hint_text": "",
          "data_type": "multi_entry",
          "question": "Fisheries Information",
          "sublabel": "",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "fisheries_information",
              "key": "type_of_fish_content",
              "label": "Uri ng laman ng Palaisdaan",
              "hint_text": "Enter Text Here",
              "data_type": "text",
              "question": "Uri ng laman ng Palaisdaan",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "fisheries_information",
              "key": "number_of_fish_per_year",
              "label": "Bilang ng inaalagaan bawat taon",
              "hint_text": "Enter Text Here",
              "data_type": "number",
              "question": "Bilang ng inaalagaan bawat taon",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "fisheries_information",
              "key": "status_of_fishery",
              "label": "Kalagayan ng palaisdaan",
              "hint_text": "",
              "data_type": "text",
              "question": "Kalagayan ng palaisdaan",
              "sublabel": "",
              "options": ["Titulado", "Umuupa", "Tenant", "FLA"],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "fisheries_information",
              "key": "type_of_water",
              "label": "Uri ng palaisdaang inaalagaan",
              "hint_text": "",
              "data_type": "text",
              "question": "Uri ng palaisdaang inaalagaan",
              "sublabel": "",
              "options": [
                "Alat (Marine water)",
                "Tabsing (Brackish water)",
                "Tabang (Fresh water)"
              ],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "fisheries_information",
              "key": "type_of_fishery",
              "label": "Uri ng Palaisdaan",
              "hint_text": "",
              "data_type": "text",
              "question": "Uri ng Palaisdaan",
              "sublabel": "",
              "options": ["Fish Cage", "Fish Pond"],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "fisheries_information",
              "key": "land_area",
              "label": "Kabuuang laki ng palaisdaan",
              "hint_text": "",
              "data_type": "number",
              "question": "Kabuuang laki ng palaisdaan",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "fisheries_information",
              "key": "number_of_fish",
              "label": "Bilang ng pitak o units ng palaisdaan",
              "hint_text": "",
              "data_type": "number",
              "question": "Bilang ng pitak o units ng palaisdaan",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "fisheries_information",
              "key": "location",
              "label": "Lugar",
              "hint_text": "Enter Text Here",
              "data_type": "text",
              "question": "Lugar",
              "sublabel": "(Location)",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "fishery_and_nipa_production_information",
          "key": "fishing_vessel",
          "label": "48. Fishing vessel",
          "hint_text": "",
          "data_type": "multi_entry",
          "question": "48. Fishing vessel",
          "sublabel": "",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "fishing_vessel",
              "key": "vessel_type",
              "label": "Vessel type:",
              "hint_text": "",
              "data_type": "text",
              "question": "Vessel type:",
              "sublabel": "",
              "options": ["non-motorized", "motorized", "Others"],
              "conditional_fields": {
                "Others": [
                  {
                    "parent_key": "vessel_type",
                    "key": "vessel_type_others",
                    "label": "If others, specify:",
                    "hint_text": "Enter Text Here",
                    "data_type": "text",
                    "question": "If others, specify:",
                    "sublabel": "",
                    "options": [],
                    "conditional_fields": {},
                    "initialValues": ""
                  }
                ]
              },
              "initialValues": ""
            },
            {
              "parent_key": "fishing_vessel",
              "key": "vessel_count",
              "label": "Bilang:",
              "hint_text": "Enter Text Here",
              "data_type": "number",
              "question": "Bilang:",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "fishing_vessel",
              "key": "material_used",
              "label": "Material Used:",
              "hint_text": "",
              "data_type": "text",
              "question": "Material Used:",
              "sublabel": "",
              "options": ["Wood", "Fiber Glass", "Composite"],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "fishing_vessel",
              "key": "material_count",
              "label": "Bilang:",
              "hint_text": "Enter Text Here",
              "data_type": "number",
              "question": "Bilang:",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "fishing_vessel",
              "key": "count_three_tonnage_below",
              "label": "Bilang ng 3 gross tonnage and below",
              "hint_text": "Enter Text Here",
              "data_type": "number",
              "question": "Bilang ng 3 gross tonnage and below",
              "sublabel": "(Municipal)",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "fishing_vessel",
              "key": "count_three_tonnage_above",
              "label": "Bilang ng 3 gross tonnage and above",
              "hint_text": "Enter Text Here",
              "data_type": "number",
              "question": "Bilang ng 3 gross tonnage and above",
              "sublabel": "(Commercial)",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "fishery_and_nipa_production_information",
          "key": "nipa_production",
          "label": "49. Nipa Production:",
          "hint_text": "",
          "data_type": "multi_entry",
          "question": "49. Nipa Production:",
          "sublabel": "",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "nipa_production",
              "key": "product",
              "label": "Product",
              "hint_text": "",
              "data_type": "text",
              "question": "Product",
              "sublabel": "",
              "options": [
                "Tuba (gal)",
                "Lambanog (gal)",
                "Suka (gal)",
                "Pawid (piraso)"
              ],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "nipa_production",
              "key": "volume_quantity_per_year",
              "label": "Volume/ Quantity per year",
              "hint_text": "Enter Text Here",
              "data_type": "number",
              "question": "Volume/ Quantity per year",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "nipa_production",
              "key": "location",
              "label": "Location",
              "hint_text": "Enter Text Here",
              "data_type": "text",
              "question": "Location",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        },
        {
          "parent_key": "fishery_and_nipa_production_information",
          "key": "fishing_gear_classification",
          "label": "50. Classification of Fishing Gears:",
          "hint_text": "",
          "data_type": "multi_entry",
          "question": "50. Classification of Fishing Gears:",
          "sublabel": "",
          "options": [],
          "conditional_fields": {},
          "initialValues": "",
          "child_columns": [
            {
              "parent_key": "fishing_gear_classification",
              "key": "type_of_fishing_gear",
              "label": "Uri ng fishing gear",
              "hint_text": "",
              "data_type": "text",
              "question": "Uri ng fishing gear",
              "sublabel": "",
              "options": [
                "Simple hand line (Kawil)",
                "Multiple hand line (Birabira,Pangawil, Pangundak,Panlagaw, Ug-ug)",
                "Bottom set long line (Kitangna pang-ilalim ng dagat)",
                "Drift long line (kitangnaPaanodsaibabaw ng dagat)",
                "Troll line (Pahila, Salabay)",
                "Suqid jigs (Pamusit,Saranggat)",
                "Beach seine (pukot)",
                "Fry dozer or Gatherer (Salap)",
                "Cast Net (Dala, Bintay, Laya)",
                "Man push nets (Sudsod, sakag, Tunod, sagap)",
                "Scoop nets(Sirok, sigpaw)",
                "Crab lift nets (Bintol ng Alimango)",
                "Fish lift nets (Basnig/Bagnet)",
                "New Look o Zapra",
                "Shrimp lift nets (bintol ng hipon/sugpo)",
                "Lever nets (Salambaw)",
                "Fish pots (Bubo ng isda)",
                "Crab pots (Bubo ng Alimango)",
                "Squid pots (Bubo ng pusit)",
                "Fyke nets (Skylab/Palos)",
                "Filter nets (Lumpot)",
                "Fish corrals (Baklad, Sagkad)",
                "Set net (Lambaklad)",
                "Barrier net (Likus, Pansara)",
                "Surface set gill net",
                "Drill gill net (panting paanod)",
                "Bottom set gill net (panting palubog)",
                "Trammel net (Transmaliyo,Pangbugiw)",
                "Encircling gill net",
                "Shrimp gill net (Galadgad,Pamasayan, Lait)",
                "Spear (Pana)",
                "Octopus/squid luring device (Pangati/Pamusit)",
                "Gaff hook (Ganso, panikwat)"
              ],
              "conditional_fields": {},
              "initialValues": ""
            },
            {
              "parent_key": "fishing_gear_classification",
              "key": "count",
              "label": "Bilang",
              "hint_text": "Enter Text Here",
              "data_type": "number",
              "question": "Bilang",
              "sublabel": "",
              "options": [],
              "conditional_fields": {},
              "initialValues": ""
            }
          ]
        }
      ]
    },
  ],
};
