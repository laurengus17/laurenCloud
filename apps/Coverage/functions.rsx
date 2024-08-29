<GlobalFunctions>
  <RESTQuery
    id="alignmentCoverage"
    notificationDuration={4.5}
    query="/admin/service-providers/{{ serviceProviderID.value }}/alignmentCoverage"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    showSuccessToaster={false}
  />
  <RESTQuery
    id="alignmentCoveragePut"
    body={'[{"key":"","value":""}]'}
    bodyType="json"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query="/admin/service-providers/{{ serviceProviderID.value }}/alignmentCoverage?adjustedTravelUpToMinutes={{hoursInput.value*60+minutesInput.value}}"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    type="PUT"
  >
    <Event
      event="success"
      method="setDisabled"
      params={{ ordered: [] }}
      pluginId="saveTravelTimeButton"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="alignmentCoverage"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "success" },
                { title: "Preferences saved!" },
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
    <Event
      event="failure"
      method="setDisabled"
      params={{ ordered: [{ disabled: false }] }}
      pluginId="saveTravelTimeButton"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="failure"
      method="showNotification"
      params={{
        ordered: [
          {
            options: {
              ordered: [
                { notificationType: "error" },
                { title: "Please set a valid drivable time " },
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
  <Function
    id="coverageProjections"
    funcBody={include("./lib/coverageProjections.js", "string")}
  />
  <Function
    id="minutesOptions"
    funcBody={include("./lib/minutesOptions.js", "string")}
  />
  <RESTQuery
    id="getUser"
    notificationDuration={4.5}
    query="/admin/service-providers/{{ serviceProviderID.value }}"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    showSuccessToaster={false}
  />
</GlobalFunctions>
