<GlobalFunctions>
  <RESTQuery
    id="getSPBusinessInfo"
    query="admin/service-providers/{{serviceProviderId.value}}/businessInformation"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
  >
    <Event
      event="success"
      method="setValue"
      params={{ ordered: [{ value: "{{ getSPBusinessInfo.data }}" }] }}
      pluginId="businessInfo"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="updateBusinessInformation"
    body="{{ businessInfo.value }}"
    bodyType="raw"
    headers={'[{"key":"Content-Type","value":"application/json"}]'}
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query="admin/service-providers/{{ serviceProviderId.value }}/alignment/businessInformation"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    type="PUT"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getSPBusinessInfo"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <Function
    id="statesListTF"
    funcBody={include("./lib/statesListTF.js", "string")}
  />
  <Function
    id="businessHoursTransformer"
    funcBody={include("./lib/businessHoursTransformer.js", "string")}
  />
  <State id="businessInfo" />
  <State
    id="defaultWorkHours"
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
    id="jobExperienceList"
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
    id="businessStatuses"
    value="[
  { label: 'None', value: 'None' },
  { label: 'Minority-Owned Business Enterprise (MBE)', value: 'MBE' },
  { label: 'Women-Owned Business Enterprise (WBE)', value: 'WBE' },
  { label: 'Veteran-Owned Business (VOB)', value: 'VOB' },
  { label: 'Service-Disabled Veteran-Owned Business (SDVOB)', value: 'SDVOB' },
  { label: 'LGBT-Business Enterprise(LGBTBE)', value: 'LGBTBE' },
  { label: 'Union', value: 'Union' },
]"
  />
  <RESTQuery
    id="getGeolocationBusinessAddress"
    isMultiplayerEdited={false}
    query="location/geocode?address={{ `${getSPBusinessInfo.data.businessAddress.address1}  ${getSPBusinessInfo.data.businessAddress.address2}, ${getSPBusinessInfo.data.businessAddress.city}, ${getSPBusinessInfo.data.businessAddress.state} ${getSPBusinessInfo.data.businessAddress.zipcode}` }}"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
  />
  <RESTQuery
    id="getGeolocationMailingAddress"
    query="location/geocode?address={{ `${getSPBusinessInfo.data.mailingAddress.address1}  ${getSPBusinessInfo.data.mailingAddress.address2}, ${getSPBusinessInfo.data.mailingAddress.city}, ${getSPBusinessInfo.data.mailingAddress.state} ${getSPBusinessInfo.data.mailingAddress.zipcode}` }}"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
  />
</GlobalFunctions>
