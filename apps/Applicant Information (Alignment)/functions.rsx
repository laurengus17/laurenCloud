<GlobalFunctions>
  <RESTQuery
    id="getApplicantInfo"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query="admin/service-providers/{{serviceProviderID.value}}/Profile?"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "{{getApplicantInfo.data}}" }] }}
      pluginId="applicantInformation"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "{{ getApplicantInfo.data }}" }] }}
      pluginId="originalFormData"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="updateApplicantInfo"
    body="{{ {...applicantInformation.value}  }}"
    bodyType="raw"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    isMultiplayerEdited={false}
    query="admin/service-providers/{{serviceProviderID.value}}/alignment/profile"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    runWhenModelUpdates={false}
    transformer="// Query results are available as the `data` variable
return data"
    type="PUT"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getApplicantInfo"
      type="datasource"
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
    id="applicantInfoCopy"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{{ applicantInformation.value }}"
  />
  <State
    id="jobExperienceList"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="[
  { label: '0 Years', value: '0 Years' },
  { label: '1 Year', value: '1 Year' },
  { label: '2 Years', value: '2 Years' },
  { label: '3 Years', value: '3 Years' },
  { label: '4 Years', value: '4 Years' },
  { label: '5 Years', value: '5 Years' },
  { label: '6 Years', value: '6 Years' },
  { label: '7 Years', value: '7 Years' },
  { label: '8 Years', value: '8 Years' },
  { label: '9 Years', value: '9 Years' },
  { label: '10 Years', value: '10 Years' },
  { label: '11 Years', value: '11 Years' },
  { label: '12 Years', value: '12 Years' },
  { label: '13 Years', value: '13 Years' },
  { label: '14 Years', value: '14 Years' },
  { label: '15 Years', value: '15 Years' },
  { label: '16 Years', value: '16 Years' },
  { label: '17 Years', value: '17 Years' },
  { label: '18 Years', value: '18 Years' },
  { label: '19 Years', value: '19 Years' },
  { label: '20 Years', value: '20 Years' },
  { label: '21 Years', value: '21 Years' },
  { label: '22 Years', value: '22 Years' },
  { label: '23 Years', value: '23 Years' },
  { label: '24 Years', value: '24 Years' },
  { label: '25 Years', value: '25 Years' },
  { label: '26 Years', value: '26 Years' },
  { label: '27 Years', value: '27 Years' },
  { label: '28 Years', value: '28 Years' },
  { label: '29 Years', value: '29 Years' },
  { label: '30 Years', value: '30 Years' },
  { label: '30+ Years', value: '30+ Years' },
]"
  />
  <State
    id="emailTypes"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="[
  { label: 'Personal', value: 'Personal' },
  { label: 'Work', value: 'Work' },
  { label: 'Other', value: 'Other' },
]"
  />
  <State
    id="phoneTypes"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="[
  { label: 'iOS/Android', value: 'iOS/Android' },
  { label: 'Home ', value: 'Home' },
  { label: 'Work', value: 'Work' },
  { label: 'Other', value: 'Other' },
]"
  />
  <State
    id="contactRelations"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="[
  { label: 'Child', value: 'Child' },
  { label: 'Friend', value: 'Friend' },
  { label: 'Parent', value: 'Parent' },
  { label: 'Relative', value: 'Relative' },
  { label: 'Sibling', value: 'Sibling' },
  { label: 'Spouse', value: 'Spouse' },
  { label: 'Other', value: 'Other' },
]"
  />
  <State
    id="defaultWorkHours"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{
    monday: {
      isAvailable: true,
      startTime: '06:00',
      endTime: '18:00',
    },
    tuesday: {
      isAvailable: true,
      startTime: '06:00',
      endTime: '18:00',
    },
    wednesday: {
      isAvailable: true,
      startTime: '06:00',
      endTime: '18:00',
    },
    thursday: {
      isAvailable: true,
      startTime: '06:00',
      endTime: '18:00',
    },
    friday: {
      isAvailable: true,
      startTime: '06:00',
      endTime: '18:00',
    },
    saturday: {
      isAvailable: true,
      startTime: '06:00',
      endTime: '18:00',
    },
    sunday: {
      isAvailable: true,
      startTime: '06:00',
      endTime: '18:00',
    },
  }"
  />
  <State
    id="defaultAfterHours"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{
    monday: {
      isAvailable: true,
      startTime: '18:00',
      endTime: '06:00',
    },
    tuesday: {
      isAvailable: true,
      startTime: '18:00',
      endTime: '06:00',
    },
    wednesday: {
      isAvailable: true,
      startTime: '18:00',
      endTime: '06:00',
    },
    thursday: {
      isAvailable: true,
      startTime: '18:00',
      endTime: '06:00',
    },
    friday: {
      isAvailable: true,
      startTime: '18:00',
      endTime: '06:00',
    },
    saturday: {
      isAvailable: true,
      startTime: '18:00',
      endTime: '06:00',
    },
    sunday: {
      isAvailable: true,
      startTime: '18:00',
      endTime: '06:00',
    },
  }"
  />
  <State
    id="_24HoursSchedule"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{
    monday: {
      isAvailable: true,
      startTime: '00:00',
      endTime: '23:59',
    },
    tuesday: {
      isAvailable: true,
      startTime: '00:00',
      endTime: '23:59',
    },
    wednesday: {
      isAvailable: true,
      startTime: '00:00',
      endTime: '23:59',
    },
    thursday: {
      isAvailable: true,
      startTime: '00:00',
      endTime: '23:59',
    },
    friday: {
      isAvailable: true,
      startTime: '00:00',
      endTime: '23:59',
    },
    saturday: {
      isAvailable: true,
      startTime: '00:00',
      endTime: '23:59',
    },
    sunday: {
      isAvailable: true,
      startTime: '00:00',
      endTime: '23:59',
    },
  }"
  />
  <State
    id="isEditing"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value=""
  />
  <State
    id="originalFormData"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
  />
  <SMTPQuery
    id="query3"
    notificationDuration={4.5}
    resourceDisplayName="Lauren SMTP"
    resourceName="7f7cdae0-0927-4672-a599-3fc3522c321c"
    showSuccessToaster={false}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>
