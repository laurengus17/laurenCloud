<GlobalFunctions>
  <Folder id="Summary">
    <RESTQuery
      id="getAlignmentSummary"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="/admin/service-providers/{{userId.value}}/alignmentSummary"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getVehiclesSummary"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="updateStatusToCompliant"
      body={'[{"key":"profileStatus","value":"\\"COMPLIANT\\""}]'}
      bodyType="json"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="/admin/service-providers/{{userId.value}}/updateProfileStatus"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="PUT"
    >
      <Event
        event="success"
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "success" },
                  { title: "SP is now Compliant!" },
                ],
              },
            },
          ],
        }}
        pluginId=""
        type="util"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <Function id="userId" funcBody={include("./lib/userId.js", "string")} />
    <Function
      id="applicantInformationData"
      funcBody={include("./lib/applicantInformationData.js", "string")}
    />
    <Function
      id="alignmentData"
      funcBody={include("./lib/alignmentData.js", "string")}
    />
    <Function
      id="tradesData"
      funcBody={include("./lib/tradesData.js", "string")}
    />
    <Function
      id="ratesData"
      funcBody={include("./lib/ratesData.js", "string")}
    />
    <Function
      id="coverageData"
      funcBody={include("./lib/coverageData.js", "string")}
    />
    <State
      id="applicantInformationAdvancedToggle"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="false"
    />
    <State
      id="tradesAdvancedInformationToggle"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="false"
    />
    <State
      id="ratesAdvancedInformationToggle"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="false"
    />
    <State
      id="alignmentAdvancedInformationToggle"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="false"
    />
    <Function
      id="tradesStatusIndicator"
      funcBody={include("./lib/tradesStatusIndicator.js", "string")}
    />
    <State
      id="mockRatesData"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '{\n  "hourlyFeeCents": 600,\n  "tripFeeCents": 500,\n  "projections": {\n    "initialRates": {\n      "jobs": {\n        "monthly": 0,\n        "quarterly": 0,\n        "halfYear": 0\n      },\n      "potentialEarnings": {\n        "monthly": 0,\n        "quarterly": 0,\n        "halfYear": 0\n      }\n    },\n    "pendingRates": {\n      "jobs": {\n        "monthly": 0,\n        "quarterly": 0,\n        "halfYear": 0\n      },\n      "potentialEarnings": {\n        "monthly": 0,\n        "quarterly": 0,\n        "halfYear": 0\n      }\n    },\n    "negotiatedRates": {\n      "jobs": {\n        "monthly": 0,\n        "quarterly": 0,\n        "halfYear": 0\n      },\n      "potentialEarnings": {\n        "monthly": 0,\n        "quarterly": 0,\n        "halfYear": 0\n      }\n    }\n  },\n  "rates": [\n    {\n      "userId": "b3b82043-3b47-453f-a0b8-17c7785f2df9",\n      "tradeRateId": "f5aafeda-1f81-4ec6-8176-93d0ac0240d9",\n      "tradeId": "f5aafeda-1f81-4ec6-8176-93d0ac0240d9",\n      "tradeName": "Cladding",\n      "tradeApprovalStatus": null,\n      "subtradeRates": [\n        {\n          "userId": "b3b82043-3b47-453f-a0b8-17c7785f2df9",\n          "tradeRateId": "ac0f29d1-1876-47da-9ae3-b8e736e533ff",\n          "tradeId": "ac0f29d1-1876-47da-9ae3-b8e736e533ff",\n          "tradeName": "Vinyl Cladding",\n          "tradeApprovalStatus": null,\n          "subtradeRates": [],\n          "originalRate": {\n            "hourlyFeeCents": 600,\n            "tripFeeCents": 500,\n            "addAfterHours": false,\n            "afterHoursHourlyFeeCents": null,\n            "afterHoursTripFeeCents": null,\n            "approvalStatus": "PENDING"\n          },\n          "editedRate": null,\n          "partnership": {\n            "percentage": 22.3,\n            "approvalStatus": "PENDING"\n          },\n          "flatRate": {\n            "flatRateCents": 1,\n            "addAfterHours": false,\n            "afterHoursFlatRateCents": null,\n            "notes": "test",\n            "approvalStatus": "PENDING"\n          }\n        },\n        {\n          "userId": "b3b82043-3b47-453f-a0b8-17c7785f2df9",\n          "tradeRateId": "6eef4a9b-eb41-4842-9d15-ff605855a913",\n          "tradeId": "6eef4a9b-eb41-4842-9d15-ff605855a913",\n          "tradeName": "Glass Cladding",\n          "tradeApprovalStatus": null,\n          "subtradeRates": [],\n          "originalRate": {\n            "hourlyFeeCents": 600,\n            "tripFeeCents": 500,\n            "addAfterHours": false,\n            "afterHoursHourlyFeeCents": null,\n            "afterHoursTripFeeCents": null,\n            "approvalStatus": "PENDING"\n          },\n          "editedRate": {\n            "hourlyFeeCents": 0,\n            "tripFeeCents": 20,\n            "flatRateCents": null,\n            "addAfterHours": true,\n            "afterHoursHourlyFeeCents": null,\n            "afterHoursTripFeeCents": null,\n            "afterHoursFlatRateCents": null,\n            "approvalStatus": "PENDING"\n          },\n          "partnership": null,\n          "flatRate": {\n            "flatRateCents": 1,\n            "addAfterHours": false,\n            "afterHoursFlatRateCents": null,\n            "notes": "test",\n            "approvalStatus": "PENDING"\n          }\n        }\n      ],\n      "originalRate": {\n        "hourlyFeeCents": 600,\n        "tripFeeCents": 500,\n        "addAfterHours": false,\n        "afterHoursHourlyFeeCents": null,\n        "afterHoursTripFeeCents": null,\n        "approvalStatus": "PENDING"\n      },\n      "editedRate": null,\n      "partnership": null,\n      "flatRate": {\n        "flatRateCents": 120,\n        "addAfterHours": true,\n        "afterHoursFlatRateCents": null,\n        "notes": "nothing",\n        "approvalStatus": "APPROVED"\n      }\n    }\n  ],\n  "workOrderType": [\n    ""\n  ],\n  "locationTypes": [\n    "commercial",\n    "residential"\n  ],\n  "restrictions": [\n    "governmentBuilding",\n    "medicalBuilding",\n    "militaryInstallation"\n  ],\n  "interestedInPartnership": true\n}'
      }
    />
    <State
      id="mockTradesData"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '{\n  trades: [\n    {\n      tradeId: "T001",\n      tradeName: "Electrician",\n      attributes: [\n        {\n          attributeId: "A001",\n          attributeName: "Experience Level",\n          selectedOptions: [\n            {\n              optionId: "O001",\n              optionLabel: "Expert"\n            }\n          ]\n        },\n        {\n          attributeId: "A002",\n          attributeName: "License Type",\n          selectedOptions: [\n            {\n              optionId: "O002",\n              optionLabel: "Master Electrician"\n            }\n          ]\n        }\n      ],\n      tradeLicenseFile: {\n        id: "F001",\n        getUrl: "https://example.com/files/F001",\n        putUrl: "https://example.com/upload/F001",\n        originalFilename: "electrician_license.pdf"\n      },\n      tradeCertificationFile: {\n        id: "F002",\n        getUrl: "https://example.com/files/F002",\n        putUrl: "https://example.com/upload/F002",\n        originalFilename: "electrician_certification.pdf"\n      },\n      tradeNotes: "Requires annual certification renewal.",\n      approval: {\n        status: "APPROVED",\n        notes: "All qualifications verified."\n      },\n      subtrades: [\n        {\n          tradeId: "T002",\n          tradeName: "Residential Electrician",\n          attributes: [\n            {\n              attributeId: "A003",\n              attributeName: "Work Type",\n              selectedOptions: [\n                {\n                  optionId: "O003",\n                  optionLabel: "Residential"\n                }\n              ]\n            }\n          ],\n          tradeLicenseFile: {\n            id: "F003",\n            getUrl: "https://example.com/files/F003",\n            putUrl: "https://example.com/upload/F003",\n            originalFilename: "residential_license.pdf"\n          },\n          tradeCertificationFile: {\n            id: "F004",\n            getUrl: "https://example.com/files/F004",\n            putUrl: "https://example.com/upload/F004",\n            originalFilename: "residential_certification.pdf"\n          },\n          tradeNotes: "Specializes in residential installations.",\n          approval: {\n            status: "PENDING",\n            notes: "Verified residential experience."\n          },\n          subtrades: []\n        },\n        {\n          tradeId: "T003",\n          tradeName: "Commercial Electrician",\n          attributes: [\n            {\n              attributeId: "A004",\n              attributeName: "Work Type",\n              selectedOptions: [\n                {\n                  optionId: "O004",\n                  optionLabel: "Commercial"\n                }\n              ]\n            }\n          ],\n          tradeLicenseFile: {\n            id: "F005",\n            getUrl: "https://example.com/files/F005",\n            putUrl: "https://example.com/upload/F005",\n            originalFilename: "commercial_license.pdf"\n          },\n          tradeCertificationFile: {\n            id: "F006",\n            getUrl: "https://example.com/files/F006",\n            putUrl: "https://example.com/upload/F006",\n            originalFilename: "commercial_certification.pdf"\n          },\n          tradeNotes: "Experience with commercial buildings.",\n          approval: {\n            status: "RESTRICTED",\n            notes: "Pending additional safety certification."\n          },\n          subtrades: []\n        }\n      ]\n    },\n    {\n      tradeId: "T004",\n      tradeName: "Plumber",\n      attributes: [\n        {\n          attributeId: "A005",\n          attributeName: "Experience Level",\n          selectedOptions: [\n            {\n              optionId: "O005",\n              optionLabel: "Intermediate"\n            }\n          ]\n        },\n        {\n          attributeId: "A006",\n          attributeName: "Certification Type",\n          selectedOptions: [\n            {\n              optionId: "O006",\n              optionLabel: "Journeyman Plumber"\n            }\n          ]\n        }\n      ],\n      tradeLicenseFile: {\n        id: "F007",\n        getUrl: "https://example.com/files/F007",\n        putUrl: "https://example.com/upload/F007",\n        originalFilename: "plumber_license.pdf"\n      },\n      tradeCertificationFile: {\n        id: "F008",\n        getUrl: "https://example.com/files/F008",\n        putUrl: "https://example.com/upload/F008",\n        originalFilename: "plumber_certification.pdf"\n      },\n      tradeNotes: "Experienced in residential and commercial plumbing.",\n      approval: {\n        status: "REJECTED",\n        notes: "Failed to provide proof of insurance."\n      },\n      subtrades: []\n    }\n  ]\n}\n'
      }
    />
    <State
      id="mockVehiclesData"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value={
        '{\n  "vehicles": [\n    {\n      "frontPhoto": {\n        "file": {\n          "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n          "getUrl": "https://example.com/frontPhotoGet",\n          "putUrl": "https://example.com/frontPhotoPut",\n          "originalFilename": "front_photo.jpg"\n        },\n        "tags": [\n          {\n            "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n            "name": "front_tag",\n            "height": 100,\n            "width": 200,\n            "x": 10,\n            "y": 20\n          }\n        ]\n      },\n      "backPhoto": {\n        "file": {\n          "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n          "getUrl": "https://example.com/backPhotoGet",\n          "putUrl": "https://example.com/backPhotoPut",\n          "originalFilename": "back_photo.jpg"\n        },\n        "tags": [\n          {\n            "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n            "name": "back_tag",\n            "height": 100,\n            "width": 200,\n            "x": 10,\n            "y": 20\n          }\n        ]\n      },\n      "leftPhoto": {\n        "file": {\n          "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n          "getUrl": "https://example.com/leftPhotoGet",\n          "putUrl": "https://example.com/leftPhotoPut",\n          "originalFilename": "left_photo.jpg"\n        },\n        "tags": [\n          {\n            "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n            "name": "left_tag",\n            "height": 100,\n            "width": 200,\n            "x": 10,\n            "y": 20\n          }\n        ]\n      },\n      "rightPhoto": {\n        "file": {\n          "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n          "getUrl": "https://example.com/rightPhotoGet",\n          "putUrl": "https://example.com/rightPhotoPut",\n          "originalFilename": "right_photo.jpg"\n        },\n        "tags": [\n          {\n            "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n            "name": "right_tag",\n            "height": 100,\n            "width": 200,\n            "x": 10,\n            "y": 20\n          }\n        ]\n      },\n      "vinPhoto": {\n        "file": {\n          "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n          "getUrl": "https://example.com/vinPhotoGet",\n          "putUrl": "https://example.com/vinPhotoPut",\n          "originalFilename": "vin_photo.jpg"\n        },\n        "tags": [\n          {\n            "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n            "name": "vin_tag",\n            "height": 100,\n            "width": 200,\n            "x": 10,\n            "y": 20\n          }\n        ]\n      }\n    }\n  ],\n  "teamMembers": [\n    {\n      "headshotPhoto": {\n        "file": {\n          "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n          "getUrl": "https://example.com/headshotPhotoGet",\n          "putUrl": "https://example.com/headshotPhotoPut",\n          "originalFilename": "headshot_photo.jpg"\n        },\n        "tags": [\n          {\n            "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n            "name": "headshot_tag",\n            "height": 100,\n            "width": 200,\n            "x": 10,\n            "y": 20\n          }\n        ]\n      },\n      "waistUpPhoto": {\n        "file": {\n          "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n          "getUrl": "https://example.com/waistUpPhotoGet",\n          "putUrl": "https://example.com/waistUpPhotoPut",\n          "originalFilename": "waist_up_photo.jpg"\n        },\n        "tags": [\n          {\n            "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n            "name": "waist_up_tag",\n            "height": 100,\n            "width": 200,\n            "x": 10,\n            "y": 20\n          }\n        ]\n      },\n      "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n      "firstName": "John",\n      "lastName": "Doe"\n    }\n  ],\n  "uniformOptions": {\n    "uniformOptIn": true,\n    "dispatchAddress": {\n      "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",\n      "name": "Main Dispatch",\n      "address1": "123 Main St",\n      "address2": "Suite 100",\n      "city": "Metropolis",\n      "state": "NY",\n      "zipcode": "10001"\n    },\n    "uniformEntitiesIds": [\n      "entity1",\n      "entity2"\n    ],\n    "uniforms": [\n      {\n        "size": "XS",\n        "quantity": 5\n      },\n      {\n        "size": "S",\n        "quantity": 10\n      },\n      {\n        "size": "M",\n        "quantity": 15\n      }\n    ]\n  }\n}\n'
      }
    />
    <State
      id="isSPCompliant"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="false"
    />
    <Function
      id="ratesStatusIndicatorTransformer"
      funcBody={include("./lib/ratesStatusIndicatorTransformer.js", "string")}
    />
    <Function
      id="alignmentLinkVisible"
      funcBody={include("./lib/alignmentLinkVisible.js", "string")}
    />
    <JavascriptQuery
      id="getSummaryTriggerFunction"
      notificationDuration={4.5}
      query={include("./lib/getSummaryTriggerFunction.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <State
      id="getSummaryTrigger"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
    />
  </Folder>
  <Folder id="VehiclesAndUniformsSummary">
    <RESTQuery
      id="getVehiclesSummary"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="/admin/service-providers/{{userId.value}}/alignmentSummary"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="setValue"
        params={{
          ordered: [
            { value: "{{getVehiclesSummary.data.vehiclesAndUniforms}}" },
          ],
        }}
        pluginId="vehiclesAndUniformsData"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { onSuccess: null },
                  { onFailure: null },
                  { additionalScope: null },
                ],
              },
            },
          ],
        }}
        pluginId="getVehicleTagCount"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSpTagCount"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="expandedVehicleTags"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="expandedSpTags"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <State
      id="vehiclesAndUniformsData"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
    />
    <State
      id="isVehiclesSummaryExpanded"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
      value="false"
    />
    <Function
      id="vehiclesSummaryTransformer"
      funcBody={include("./lib/vehiclesSummaryTransformer.js", "string")}
    />
    <JavascriptQuery
      id="getVehicleTagCount"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/getVehicleTagCount.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="getSpTagCount"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/getSpTagCount.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="expandedVehicleTags"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/expandedVehicleTags.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <JavascriptQuery
      id="expandedSpTags"
      notificationDuration={4.5}
      query={include("./lib/expandedSpTags.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
    />
    <Function
      id="vehiclesStatusIndicator"
      funcBody={include("./lib/vehiclesStatusIndicator.js", "string")}
    />
    <Function
      id="vehiclesAndUniformsLinkVisible"
      funcBody={include("./lib/vehiclesAndUniformsLinkVisible.js", "string")}
    />
  </Folder>
  <Folder id="Coverage">
    <Function
      id="shouldShowUnsavedModal"
      funcBody={include("./lib/shouldShowUnsavedModal.js", "string")}
    />
  </Folder>
  <RetoolAIQuery
    id="chat1_query1"
    action="chatResponseGeneration"
    chatHistory="{{ chat1.messageHistory }}"
    chatInput="{{ chat1.lastMessage }}"
    model="gpt-4"
    multimodalModel="gpt-4-vision-preview"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
  />
  <RetoolAIQuery
    id="chat1_query2"
    action="chatResponseGeneration"
    chatHistory="{{ chat1.messageHistory }}"
    chatInput="{{ chat1.lastMessage }}"
    model="gpt-4"
    multimodalModel="gpt-4-vision-preview"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
  />
  <RetoolAIQuery
    id="toggleButton2ChangeHandler"
    model="gpt-4"
    multimodalModel="gpt-4-vision-preview"
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
  />
  <SqlQueryUnified
    id="queryPhone"
    isMultiplayerEdited={false}
    query={include("./lib/queryPhone.sql", "string")}
    resourceName="68238a92-b051-4f97-8e25-5799d44a597a"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="queryEmail"
    isMultiplayerEdited={false}
    query={include("./lib/queryEmail.sql", "string")}
    resourceName="68238a92-b051-4f97-8e25-5799d44a597a"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="querySPprofile"
    notificationDuration={4.5}
    query={include("./lib/querySPprofile.sql", "string")}
    resourceName="68238a92-b051-4f97-8e25-5799d44a597a"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="querySPuser"
    query={include("./lib/querySPuser.sql", "string")}
    resourceName="68238a92-b051-4f97-8e25-5799d44a597a"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="querySPemergency"
    isMultiplayerEdited={false}
    query={include("./lib/querySPemergency.sql", "string")}
    resourceName="68238a92-b051-4f97-8e25-5799d44a597a"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="querySPdispatchAddress"
    isMultiplayerEdited={false}
    query={include("./lib/querySPdispatchAddress.sql", "string")}
    resourceName="68238a92-b051-4f97-8e25-5799d44a597a"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="querySPrates"
    isMultiplayerEdited={false}
    query={include("./lib/querySPrates.sql", "string")}
    resourceName="68238a92-b051-4f97-8e25-5799d44a597a"
    transformer="// Query results are available as the `data` variable
return data
{{querySPrates.data.TRAVEL_UP_TO_MINUTES}} / 60"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="querySPpayments"
    isMultiplayerEdited={false}
    query={include("./lib/querySPpayments.sql", "string")}
    resourceName="68238a92-b051-4f97-8e25-5799d44a597a"
    transformer="// Query results are available as the `data` variable
return data
{{querySPrates.data.TRAVEL_UP_TO_MINUTES}} / 60"
    warningCodes={[]}
  />
  <State
    id="TESTuser"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="ab196c42-fb8e-4e46-ae8e-6025eb993ea4"
  />
  <SqlQueryUnified
    id="query14"
    notificationDuration={4.5}
    resourceName="68238a92-b051-4f97-8e25-5799d44a597a"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
  />
  <SqlQueryUnified
    id="querySPdriverLicense"
    notificationDuration={4.5}
    resourceName="68238a92-b051-4f97-8e25-5799d44a597a"
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    updateSetValueDynamically={true}
  />
  <RESTQuery
    id="querySPratesAPI"
    isMultiplayerEdited={false}
    query="/admin/service-providers/{{TESTuser.value}}/ratesAndCoverage"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    transformer="// Query results are available as the `data` variable
return data
"
  >
    <Event
      event="success"
      method="run"
      params={{ ordered: [{ src: "console.log( querySPratesAPI )" }] }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <Function
    id="transformerTravelTime"
    funcBody={include("./lib/transformerTravelTime.js", "string")}
  />
  <Function
    id="transformerRates"
    funcBody={include("./lib/transformerRates.js", "string")}
  />
  <OpenAPIQuery
    id="query19"
    notificationDuration={4.5}
    resourceName="d1069b01-ddc1-42ed-844c-e684b9088c58"
    showSuccessToaster={false}
  />
  <Function
    id="trade_data_transformed"
    funcBody={include("./lib/trade_data_transformed.js", "string")}
  />
  <SqlQueryUnified
    id="sp_profile_trades"
    query={include("./lib/sp_profile_trades.sql", "string")}
    resourceName="68238a92-b051-4f97-8e25-5799d44a597a"
    warningCodes={[]}
  />
  <State
    id="user"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="ab196c42-fb8e-4e46-ae8e-6025eb993ea4"
  />
  <SqlQueryUnified
    id="sp_profile_trade_options"
    query={include("./lib/sp_profile_trade_options.sql", "string")}
    resourceName="68238a92-b051-4f97-8e25-5799d44a597a"
    warningCodes={[]}
  />
  <RESTQuery
    id="documentsAdmin"
    isMultiplayerEdited={false}
    query="/admin/service-providers/{{user.value}}/documents"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    transformer="// Query results are available as the `data` variable
return data
"
  />
  <Function
    id="statesListTF"
    funcBody={include("./lib/statesListTF.js", "string")}
  />
  <Function id="transformer5" />
  <RESTQuery
    id="spSigningAndCompliance"
    query="/admin/service-providers/{{user.value}}/signingAndCompliance"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
  />
  <RESTQuery
    id="query24"
    isMultiplayerEdited={false}
    query="/validation/ssn/4eaf0a1f-f530-4a6f-9568-a2c4055dd1cd"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
  />
  <RetoolAIQuery
    id="chat2_query1"
    action="chatResponseGeneration"
    chatHistory="{{ chat2.messageHistory }}"
    chatInput="{{ chat2.lastMessage }}"
    model="gpt-4"
    multimodalModel="gpt-4-vision-preview"
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
  />
  <JavascriptQuery
    id="query26"
    notificationDuration={4.5}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <State
    id="variable3"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
  />
  <State
    id="subtradesListAlignmentApproval"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value={
      '[\n{\n  trade: "Plumbing",\n  [\n  subtrades: {\n    subid: "aaaa"\n    subtrade: "De-Winterization",\n    LicenseName: "Master Plumber",\n    LicenseImgUrl: "https://www.image.com",\n    CertificateName: "Cert Name",\n    CertificateImgUrl: "https://www.image.com",\n    subtradeApproval: "Pending Approval"\n  },{\n    subid: "bbbb",\n    subtrade: "Bathtub",\n    LicenseName: "",\n    LicenseImgUrl: "",\n    CertificateName: "",\n    CertificateImgUrl: "",\n    subtradeApproval: "Pending Approval"\n  }\n]\n}\n]\n'
    }
  />
  <State
    id="mockDataRatesTable"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="[{
   tradesAndSubtrades: 'testTrade',
  hourly: 'test',
  tripFee: '123',
},
{
   tradesAndSubtrades: 'testTrade',
  hourly: 'test',
  tripFee: '123',
},
{
   tradesAndSubtrades: 'testTrade',
  hourly: 'test',
  tripFee: '123',
}
]"
  />
  <State
    id="mockDataExclusions"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="[{
  excludedBy: 'Admin',
  exclusionType: 'Entity',
  exclusionOptions1: ['Entity 1', 'Entity 2', 'Entity 3'],
  exclusionOption2: null,
},
{
  excludedBy: 'System',
  exclusionType: 'Client',
  exclusionOptions1: ['Client 1', 'Client 2', 'Client 3'],
  exclusionOption2: null,
},
{
  excludedBy: 'Admin',
  exclusionType: 'Brand',
  exclusionOptions1: ['Brand 1', 'Brand 2'],
  exclusionOption2: null,
}]"
  />
  <State
    id="mockDataRates"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value={
      '{\n  "hourlyFeeCents": 5000,\n  "tripFeeCents": 2000,\n  "projections": {\n    "initialRates": {\n      "jobs": {\n        "monthly": 20,\n        "quarterly": 60,\n        "halfYear": 120\n      },\n      "potentialEarnings": {\n        "monthly": 100000,\n        "quarterly": 300000,\n        "halfYear": 600000\n      }\n    },\n    "pendingRates": {\n      "jobs": {\n        "monthly": 15,\n        "quarterly": 45,\n        "halfYear": 90\n      },\n      "potentialEarnings": {\n        "monthly": 75000,\n        "quarterly": 225000,\n        "halfYear": 450000\n      }\n    },\n    "negotiatedRates": {\n      "jobs": {\n        "monthly": 18,\n        "quarterly": 54,\n        "halfYear": 108\n      },\n      "potentialEarnings": {\n        "monthly": 90000,\n        "quarterly": 270000,\n        "halfYear": 540000\n      }\n    }\n  },\n  "rates": [\n    {\n      "userId": "user123",\n      "tradeRateId": "tradeRate123",\n      "tradeId": "trade123",\n      "tradeName": "Electrician",\n      "tradeApprovalStatus": "APPROVED",\n      "subtradeRates": [\n        {\n          "userId": "subuser1",\n          "tradeRateId": "subtradeRate1",\n          "tradeId": "subtrade1",\n          "tradeName": "Helper",\n          "tradeApprovalStatus": "APPROVED",\n          "originalRate": {\n            "hourlyFeeCents": 3000,\n            "tripFeeCents": 1500,\n            "approvalStatus": "APPROVED"\n          },\n          "editedRate": {\n            "hourlyFeeCents": 3200,\n            "tripFeeCents": 1600,\n            "addAfterHours": true,\n            "afterHoursFeeCents": 2000,\n            "approvalStatus": "PENDING"\n          },\n          "partnership": {\n            "percentage": 8,\n            "approvalStatus": "PENDING"\n          },\n          "flatRate": {\n            "flatRateCents": 12000,\n            "addAfterHours": false,\n            "afterHoursFeeCents": 0,\n            "notes": "Flat rate for small tasks",\n            "approvalStatus": "APPROVED"\n          }\n        }\n      ],\n      "originalRate": {\n        "hourlyFeeCents": 5000,\n        "tripFeeCents": 2000,\n        "approvalStatus": "APPROVED"\n      },\n      "editedRate": {\n        "hourlyFeeCents": 5500,\n        "tripFeeCents": 2100,\n        "addAfterHours": true,\n        "afterHoursFeeCents": 3000,\n        "approvalStatus": "PENDING"\n      },\n      "partnership": {\n        "percentage": 10,\n        "approvalStatus": "APPROVED"\n      },\n      "flatRate": {\n        "flatRateCents": 15000,\n        "addAfterHours": false,\n        "afterHoursFeeCents": 0,\n        "notes": "Flat rate for small jobs",\n        "approvalStatus": "REJECTED"\n      }\n    },\n    {\n      "userId": "user456",\n      "tradeRateId": "tradeRate456",\n      "tradeId": "trade456",\n      "tradeName": "Plumber",\n      "tradeApprovalStatus": "PENDING",\n      "subtradeRates": [\n        {\n          "userId": "subuser2",\n          "tradeRateId": "subtradeRate2",\n          "tradeId": "subtrade2",\n          "tradeName": "Helper",\n          "tradeApprovalStatus": "APPROVED",\n          "originalRate": {\n            "hourlyFeeCents": 4000,\n            "tripFeeCents": 1800,\n            "approvalStatus": "APPROVED"\n          },\n          "editedRate": {\n            "hourlyFeeCents": 4200,\n            "tripFeeCents": 1900,\n            "addAfterHours": true,\n            "afterHoursFeeCents": 2200,\n            "approvalStatus": "PENDING"\n          },\n          "partnership": {\n            "percentage": 9,\n            "approvalStatus": "APPROVED"\n          },\n          "flatRate": {\n            "flatRateCents": 13000,\n            "addAfterHours": false,\n            "afterHoursFeeCents": 0,\n            "notes": "Flat rate for emergency tasks",\n            "approvalStatus": "PENDING"\n          }\n        }\n      ],\n      "originalRate": {\n        "hourlyFeeCents": 4500,\n        "tripFeeCents": 2000,\n        "approvalStatus": "APPROVED"\n      },\n      "editedRate": {\n        "hourlyFeeCents": 4800,\n        "tripFeeCents": 2100,\n        "addAfterHours": true,\n        "afterHoursFeeCents": 2500,\n        "approvalStatus": "PENDING"\n      },\n      "partnership": {\n        "percentage": 12,\n        "approvalStatus": "APPROVED"\n      },\n      "flatRate": {\n        "flatRateCents": 16000,\n        "addAfterHours": false,\n        "afterHoursFeeCents": 0,\n        "notes": "Flat rate for emergency jobs",\n        "approvalStatus": "APPROVED"\n      }\n    }\n  ],\n  "workOrderType": ["reactive"],\n  "locationTypes": ["commercial", "residential"],\n  "restrictions": ["governmentBuilding", "medicalBuilding", "militaryInstallation"],\n  "interestedInPartnership": true\n}\n'
    }
  />
  <State
    id="mockDataProjectionsTable"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{{ [{rates: 'Initial Rates', ...mockDataRates.value.projections.initialRates.jobs},
  {rates: 'Pending Rates', ...mockDataRates.value.projections.pendingRates.jobs},
  {rates: 'Negotiated Rates', ...mockDataRates.value.projections.negotiatedRates.jobs}]
  }}"
  />
  <State
    id="mockDataOriginalRates"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{{ 
  
mockDataRates.value.rates.reduce((acc, curr) => {
  
  const modifiedSubTrades = curr.subtradeRates.map((item) => {
    const { originalRate } = item; 
    return {
      tradeName: item.tradeName,
      tradeApprovalStatus: item.tradeApprovalStatus,
      ...originalRate
    }
  });
  
  return [...acc, {tradeName: curr.tradeName, ...curr.originalRate, subtradeRates: modifiedSubTrades}]

}, [])}}"
  />
  <State
    id="mockDataEditedRates"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{{ 
  
 mockDataRates.value.rates.reduce((acc, curr) => {
  
  const modifiedSubTrades = curr.subtradeRates.map((item) => {
    const { editedRate } = item;
    return {
      tradeName: item.tradeName,
      tradeApprovalStatus: item.tradeApprovalStatus,
      ...editedRate
    };
  });
  
  const { editedRate } = curr;
  
  return [...acc, { 
    tradeName: curr.tradeName, 
    tradeApprovalStatus: curr.tradeApprovalStatus,
    ...editedRate, 
    subtradeRates: modifiedSubTrades 
  }];
}, [])
 }}"
  />
  <State
    id="mockDataPartnerships"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{{ 
  
mockDataRates.value.rates.reduce((acc, curr) => {
  
  const modifiedSubTrades = curr.subtradeRates.map((item) => {
    const { partnership } = item; 
    return {
      tradeName: item.tradeName,
      tradeApprovalStatus: item.tradeApprovalStatus,
      ...partnership
    }
  });
  
  return [...acc, { tradeName: curr.tradeName, ...curr.partnership, subtradeRates: modifiedSubTrades }];
  
}, [])
 }}"
  />
  <State
    id="mockDataFlatRates"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{{

  mockDataRates.value.rates.reduce((acc, curr) => {
  const modifiedSubTrades = curr.subtradeRates.map((item) => {
    const { flatRate } = item;
    return {
      tradeName: item.tradeName,
      tradeApprovalStatus: item.tradeApprovalStatus,
      ...flatRate
    };
  });

  const { flatRate } = curr;

  return [...acc, { 
    tradeName: curr.tradeName, 
    tradeApprovalStatus: curr.tradeApprovalStatus,
    ...flatRate, 
    subtradeRates: modifiedSubTrades 
  }];
}, [])

}}
"
  />
  <Function
    id="transformer6"
    funcBody={include("./lib/transformer6.js", "string")}
  />
  <RESTQuery
    id="getApplicantInfo"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query="/admin/service-providers/{{urlparams.userId}}/Profile?"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    showSuccessToaster={false}
  >
    <Event
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "{{ getApplicantInfo.data }}" }] }}
      pluginId="applicantInformation"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <State
    id="applicantInformation"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
  />
  <State
    id="daysOfWeek"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']"
  />
</GlobalFunctions>
