<GlobalFunctions>
  <Folder id="API">
    <RESTQuery
      id="putUpdateAlignmentRateStatus"
      body="{{updateAlignmentRateStatusPayloadTransformer.value}}"
      bodyType="raw"
      headers={
        '[{"key":"","value":""},{"key":"Content-Type","value":"application/json"}]'
      }
      isMultiplayerEdited={false}
      query="/admin/service-providers/{{serviceProviderID.value}}/updateAlignmentRateStatus"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      runWhenModelUpdates={false}
      type="PUT"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getAlignmentRates"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="putAddRateLogic"
      body="{{addRateLogicPayloadTransformer.value}}"
      bodyType="raw"
      headers={
        '[{"key":"","value":""},{"key":"Content-Type","value":"application/json"}]'
      }
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="/admin/service-providers/{{serviceProviderID.value}}/addRateLogic"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="PUT"
    >
      <Event
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="newRateLogic"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getAlignmentRates"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="putEditRateLogic"
      body="{{editRateLogicPayloadTransformer.value}}"
      bodyType="raw"
      headers={
        '[{"key":"","value":""},{"key":"Content-Type","value":"application/json"}]'
      }
      notificationDuration={4.5}
      query="/admin/service-providers/{{serviceProviderID.value}}/editRateLogic"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="PUT"
    >
      <Event
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="editEditedRates"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="editFlatRates"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="editPartnershipRates"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="editOriginalRates"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getAlignmentRates"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="bulkEditRates"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="putAlignmentRates"
      body="{{editAlignmentRatesPayloadTransformer.value}}"
      bodyType="raw"
      headers={
        '[{"key":"","value":""},{"key":"Content-Type","value":"application/json"}]'
      }
      notificationDuration={4.5}
      query="admin/service-providers/{{serviceProviderID.value}}/alignmentRates"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="PUT"
    />
    <RESTQuery
      id="getAlignmentRates"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/{{serviceProviderID.value}}/alignmentRates"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "{{getAlignmentRates.data}}" }] }}
        pluginId="ratesData"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
  </Folder>
  <Folder id="API_helpers">
    <Function
      id="editAlignmentRatesPayloadTransformer"
      funcBody={include(
        "./lib/editAlignmentRatesPayloadTransformer.js",
        "string"
      )}
    />
    <Function
      id="addRateLogicPayloadTransformer"
      funcBody={include("./lib/addRateLogicPayloadTransformer.js", "string")}
    />
    <Function
      id="editRateLogicPayloadTransformer"
      funcBody={include("./lib/editRateLogicPayloadTransformer.js", "string")}
    />
    <Function
      id="updateAlignmentRateStatusPayloadTransformer"
      funcBody={include(
        "./lib/updateAlignmentRateStatusPayloadTransformer.js",
        "string"
      )}
    />
  </Folder>
  <Folder id="MockData">
    <State
      id="mockDataRates"
      value={
        '{\n  "hourlyRateCents": 5000,\n  "tripFeeCents": 2000,\n  "projections": {\n    "initialRates": {\n      "jobs": {\n        "monthly": 20,\n        "quarterly": 60,\n        "halfYear": 120\n      },\n      "potentialEarnings": {\n        "monthly": 100000,\n        "quarterly": 300000,\n        "halfYear": 600000\n      }\n    },\n    "pendingRates": {\n      "jobs": {\n        "monthly": 15,\n        "quarterly": 45,\n        "halfYear": 90\n      },\n      "potentialEarnings": {\n        "monthly": 75000,\n        "quarterly": 225000,\n        "halfYear": 450000\n      }\n    },\n    "negotiatedRates": {\n      "jobs": {\n        "monthly": 18,\n        "quarterly": 54,\n        "halfYear": 108\n      },\n      "potentialEarnings": {\n        "monthly": 90000,\n        "quarterly": 270000,\n        "halfYear": 540000\n      }\n    }\n  },\n  "rates": [\n    {\n      "userId": "user123",\n      "tradeRateId": "tradeRate123",\n      "tradeId": "trade123",\n      "tradeName": "Electrician",\n      "tradeApprovalStatus": "APPROVED",\n      "subtradeRates": [\n        {\n          "userId": "subuser1",\n          "tradeRateId": "subtradeRate1",\n          "tradeId": "subtrade1",\n          "tradeName": "Helper",\n          "tradeApprovalStatus": "APPROVED",\n          "originalRate": {\n            "hourlyRateCents": 3000,\n            "tripFeeCents": 1500,\n            "approvalStatus": "APPROVED"\n          },\n          "editedRate": {\n            "hourlyRateCents": 3200,\n            "tripFeeCents": 1600,\n            "addAfterHours": true,\n            "afterHoursFeeCents": 2000,\n            "approvalStatus": "PENDING"\n          },\n          "partnership": {\n            "percentage": 8,\n            "approvalStatus": "PENDING"\n          },\n          "flatRate": {\n            "flatRateCents": 12000,\n            "addAfterHours": false,\n            "afterHoursFeeCents": 0,\n            "notes": "Flat rate for small tasks",\n            "approvalStatus": "APPROVED"\n          }\n        }\n      ],\n      "originalRate": {\n        "hourlyRateCents": 5000,\n        "tripFeeCents": 2000,\n        "approvalStatus": "APPROVED"\n      },\n      "editedRate": {\n        "hourlyRateCents": 5500,\n        "tripFeeCents": 2100,\n        "addAfterHours": true,\n        "afterHoursFeeCents": 3000,\n        "approvalStatus": "PENDING"\n      },\n      "partnership": {\n        "percentage": 10,\n        "approvalStatus": "APPROVED"\n      },\n      "flatRate": {\n        "flatRateCents": 15000,\n        "addAfterHours": false,\n        "afterHoursFeeCents": 0,\n        "notes": "Flat rate for small jobs",\n        "approvalStatus": "REJECTED"\n      }\n    },\n    {\n      "userId": "user456",\n      "tradeRateId": "tradeRate456",\n      "tradeId": "trade456",\n      "tradeName": "Plumber",\n      "tradeApprovalStatus": "PENDING",\n      "subtradeRates": [\n        {\n          "userId": "subuser2",\n          "tradeRateId": "subtradeRate2",\n          "tradeId": "subtrade2",\n          "tradeName": "Helper",\n          "tradeApprovalStatus": "APPROVED",\n          "originalRate": {\n            "hourlyRateCents": 4000,\n            "tripFeeCents": 1800,\n            "approvalStatus": "APPROVED"\n          },\n          "editedRate": {\n            "hourlyRateCents": 4200,\n            "tripFeeCents": 1900,\n            "addAfterHours": true,\n            "afterHoursFeeCents": 2200,\n            "approvalStatus": "PENDING"\n          },\n          "partnership": {\n            "percentage": 9,\n            "approvalStatus": "APPROVED"\n          },\n          "flatRate": {\n            "flatRateCents": 13000,\n            "addAfterHours": false,\n            "afterHoursFeeCents": 0,\n            "notes": "Flat rate for emergency tasks",\n            "approvalStatus": "PENDING"\n          }\n        }\n      ],\n      "originalRate": {\n        "hourlyRateCents": 4500,\n        "tripFeeCents": 2000,\n        "approvalStatus": "APPROVED"\n      },\n      "editedRate": {\n        "hourlyRateCents": 4800,\n        "tripFeeCents": 2100,\n        "addAfterHours": true,\n        "afterHoursFeeCents": 2500,\n        "approvalStatus": "PENDING"\n      },\n      "partnership": {\n        "percentage": 12,\n        "approvalStatus": "APPROVED"\n      },\n      "flatRate": {\n        "flatRateCents": 16000,\n        "addAfterHours": false,\n        "afterHoursFeeCents": 0,\n        "notes": "Flat rate for emergency jobs",\n        "approvalStatus": "APPROVED"\n      }\n    }\n  ],\n  "workOrderType": ["reactive"],\n  "locationTypes": ["commercial", "residential"],\n  "restrictions": ["governmentBuilding", "medicalBuilding", "militaryInstallation"],\n  "interestedInPartnership": true\n}\n'
      }
    />
  </Folder>
  <Folder id="TableData">
    <State
      id="originalRatesTableData"
      value="{{ 
  
ratesData.value.rates.reduce((acc, curr) => {
  let result = [];

  const {originalRate} = curr;
  result.push({
    tradeId: curr.tradeId,
    tradeName: curr.tradeName,
    ...originalRate
  })
  
 if(curr.subtradeRates.length > 0) {
    curr.subtradeRates.forEach((item) => {
    
     result.push({
       tradeId: item.tradeId,
       tradeName: `${curr.tradeName} - ${item.tradeName}`,
       ...item.originalRate
     })
   })
 }

  return [...acc, ...result]

}, []).filter((it) => {
 const editedRates = editedRatesTableData.value.map((val) => val.tradeId);
return !editedRates.includes(it.tradeId)
})

}}"
    />
    <State
      id="editedRatesTableData"
      value="{{ 
  
ratesData.value.rates.reduce((acc, curr) => {
  let result = [];

  const {editedRate} = curr;
  if(editedRate){
       result.push({
    tradeId: curr.tradeId,
    tradeName: curr.tradeName,
    ...editedRate
  })
  }
 
  
 if(curr.subtradeRates.length > 0) {
    curr.subtradeRates.forEach((item) => {

      
    
     result.push({
       tradeId: item.tradeId,
       tradeName: `${curr.tradeName} - ${item.tradeName}`,
       ...item.editedRate
     })
   })
 }

  return [...acc, ...result]

}, []).filter((it) => it.approvalStatus)

}}"
    />
    <State
      id="partnershipsTableData"
      value="{{ 
  
ratesData.value.rates.reduce((acc, curr) => {
  let result = [];

  const {partnership} = curr;
  result.push({
    tradeId: curr.tradeId,
    tradeName: curr.tradeName,
    ...partnership
  })
  
 if(curr.subtradeRates.length > 0) {
   const subtradeOriginalRates = curr.subtradeRates.map((item) => {
    
     result.push({
       tradeId: item.tradeId,
       tradeName: `${curr.tradeName} - ${item.tradeName}`,
       ...item.partnership
     })
   })
 }

  return [...acc, ...result]

}, []).filter((it) => it.approvalStatus)

}}"
    />
    <State
      id="flatRatesTableData"
      value="{{ 
  
ratesData.value.rates.reduce((acc, curr) => {
  let result = [];

  const {flatRate} = curr;
  result.push({
    tradeId: curr.tradeId,
    tradeName: curr.tradeName,
    ...flatRate
  })
  
 if(curr.subtradeRates.length > 0) {
   const subtradeOriginalRates = curr.subtradeRates.map((item) => {
    
     result.push({
       tradeId: item.tradeId,
       tradeName: `${curr.tradeName} - ${item.tradeName}`,
       ...item.flatRate
     })
   })
 }

  return [...acc, ...result]

}, []).filter((it) => it.approvalStatus)

}}"
    />
    <Function
      id="allTradesTableData"
      funcBody={include("./lib/allTradesTableData.js", "string")}
    />
    <State
      id="projectionsTableData"
      value="{{[{rates: 'Initial Rates', ...ratesData.value.projections.initialRates[projectionTypeSelect.selectedItem.value]},
  {rates: 'Pending Rates', ...ratesData.value.projections.pendingRates[projectionTypeSelect.selectedItem.value]},
  {rates: 'Negotiated Rates', ...ratesData.value.projections.negotiatedRates[projectionTypeSelect.selectedItem.value]}]}}"
    />
  </Folder>
  <State id="ratesData" />
  <State id="bulkEditType" value="" />
  <State id="singleEditType" />
  <State id="statusUpdateFromTable" />
  <State id="rateBeingEditedData" />
  <Function
    id="projectionsTableDataTransformer"
    funcBody={include("./lib/projectionsTableDataTransformer.js", "string")}
  />
</GlobalFunctions>
