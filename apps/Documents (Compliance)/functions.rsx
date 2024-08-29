<GlobalFunctions>
  <RESTQuery
    id="getSPDocuments"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query="admin/service-providers/{{serviceProviderId.value}}/documents"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    showSuccessToaster={false}
  >
    <Event
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "{{getSPDocuments.data}}" }] }}
      pluginId="documents"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="updateDocComplianceStatus"
    body={
      '[{"key":"files","value":"{{ fileToUpdate.value.fileIds }}"},{"key":"updateMessage","value":"{{ fileToUpdate.value.updateMessage }}"},{"key":"complianceStatus","value":"{{ fileToUpdate.value.complianceStatus }}"},{"key":"resubmissionReasons","value":"{{ fileToUpdate.value.resubmissionReasons }}"}]'
    }
    bodyType="json"
    headers="[]"
    isMultiplayerEdited={false}
    query="admin/service-providers/{{serviceProviderId.value}}/documents/compliance?"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    runWhenModelUpdates={false}
    type="PUT"
  >
    <Event
      enabled=""
      event="success"
      method="setValue"
      params={{
        ordered: [
          {
            value:
              "{{ !fileToUpdate.value.isWithinModal ? {\n  fileIds: [],\n  updateMessage: '',\n  complianceStatus: '',\n  docName: '',\n  docType: '',\n  fileUrl: '',\n  currentStatus: '',\n  resubmissionReasons: [],\n  entityType: 'FILE',\n  isWithinModal: false,\n} : {\n  ...fileToUpdate.value,\n  currentStatus: fileToUpdate.value.complianceStatus,\n  updateMessage: '',\n  resubmissionReasons: [],\n} }}",
          },
        ],
      }}
      pluginId="fileToUpdate"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getSPDocuments"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="getVehicleTags"
    isMultiplayerEdited={false}
    query="admin/service-providers/tags?search=&tagType=VEHICLES"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
  >
    <Event
      enabled=""
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "{{ getVehicleTags.data }}" }] }}
      pluginId="vehicleTags"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="getApplicantTags"
    isMultiplayerEdited={false}
    query="admin/service-providers/tags?search=&tagType=APPLICANT"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
  >
    <Event
      enabled=""
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "{{ getApplicantTags.data }}" }] }}
      pluginId="applicantTags"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="getResubmissionReasons"
    query="admin/compliance/resubmit-reasons"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
  >
    <Event
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "{{ getResubmissionReasons.data }}" }] }}
      pluginId="reasonsForResubmission"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="updateTags"
    body={
      '[{"key":"tags","value":"{{ fileToUpdate.value.tags }}"},{"key":"fileId","value":"{{ fileToUpdate.value.fileIds[0] }}"},{"key":"entityType","value":"{{ fileToUpdate.value.entityType }}"}]'
    }
    bodyType="json"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query="admin/service-providers/{{ serviceProviderId.value }}/updateEntityTags"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    type="POST"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getSPDocuments"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <State id="documents" />
  <State
    id="statesList"
    value="[
      { label: 'Alabama', value: 'AL' },
      { label: 'Alaska', value: 'AK' },
      { label: 'Arizona', value: 'AZ' },
      { label: 'Arkansas', value: 'AR' },
      { label: 'California', value: 'CA' },
      { label: 'Colorado', value: 'CO' },
      { label: 'Connecticut', value: 'CT' },
      { label: 'Delaware', value: 'DE' },
      { label: 'Florida', value: 'FL' },
      { label: 'Georgia ', value: 'GA' },
      { label: 'Hawaii', value: 'HI' },
      { label: 'Idaho', value: 'ID' },
      { label: 'Illinois', value: 'IL' },
      { label: 'Indiana', value: 'IN' },
      { label: 'Iowa', value: 'IA' },
      { label: 'Kansas', value: 'KS' },
      { label: 'Kentucky', value: 'KY' },
      { label: 'Louisiana', value: 'LA' },
      { label: 'Maine', value: 'ME' },
      { label: 'Maryland', value: 'MD' },
      { label: 'Massachusetts', value: 'MA' },
      { label: 'Michigan', value: 'MI' },
      { label: 'Minnesota', value: 'MN' },
      { label: 'Mississippi', value: 'MS' },
      { label: 'Missouri', value: 'MO' },
      { label: 'Montana', value: 'MT' },
      { label: 'Nebraska', value: 'NE' },
      { label: 'Nevada', value: 'NV' },
      { label: 'New Hampshire', value: 'NH' },
      { label: 'New Jersey', value: 'NJ' },
      { label: 'New Mexico', value: 'NM' },
      { label: 'New York', value: 'NY' },
      { label: 'North Carolina', value: 'NC' },
      { label: 'North Dakota', value: 'ND' },
      { label: 'Ohio', value: 'OH' },
      { label: 'Oklahoma', value: 'OK' },
      { label: 'Oregon', value: 'OR' },
      { label: 'Pennsylvania', value: 'PA' },
      { label: 'Rhode Island', value: 'RI' },
      { label: 'South Carolina', value: 'SC' },
      { label: 'South Dakota', value: 'SD' },
      { label: 'Tennessee', value: 'TN' },
      { label: 'Texas', value: 'TX' },
      { label: 'Utah', value: 'UT' },
      { label: 'Vermont', value: 'VT' },
      { label: 'Virginia', value: 'VA' },
      { label: 'Washington', value: 'WA' },
      { label: 'West Virginia', value: 'WV' },
      { label: 'Wisconsin', value: 'WI' },
      { label: 'Wyoming', value: 'WY' },
      { label: 'American Samoa', value: 'AS' },
      { label: 'Guam', value: 'GU' },
      { label: 'Northern Mariana Islands', value: 'MP' },
      { label: 'Puerto Rico', value: 'PR' },
      { label: 'U.S. Virgin Islands', value: 'VI' },
      { label: 'Washington, D.C. (District of Columbia) ', value: 'DC' },
 ]"
  />
  <State
    id="fileToUpdate"
    value="{
  fileIds: [],
  updateMessage: '',
  complianceStatus: '',
  docName: '',
  docType: '',
  fileUrl: '',
  currentStatus: '',
  resubmissionReasons: [],
  tags: [],
  entityType: 'FILE',
  isWithinModal: false,
}"
  />
  <State
    id="certificationTypes"
    value="[
  { label: 'Trade Certifications', value: 'Trade Certifications' },
  { label: 'Safety Certifications', value: 'Safety Certifications' },
  {
    label: 'Manufacturer Certifications',
    value: 'Manufacturer Certifications',
  },
  { label: 'Other', value: 'Other' },
]"
  />
  <State id="reasonsForResubmission" value="" />
  <State
    id="displayModalInfo"
    value="{
  docName: '',
  fileUrl: ''
}"
  />
  <State id="vehicleTags" value="[]" />
  <State id="applicantTags" value="[]" />
  <Function
    id="validationsCounter"
    funcBody={include("./lib/validationsCounter.js", "string")}
  />
  <GlobalWidgetQuery
    id="getSpDetailsTrigger"
    defaultValue=""
    resourceName="GlobalWidgetQuery"
    value=""
  />
</GlobalFunctions>
