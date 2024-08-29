<GlobalFunctions>
  <Folder id="GETs">
    <RESTQuery
      id="getVehicleTags"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/tags?search=&tagType=VEHICLES"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "{{ getVehicleTags.data }}" }] }}
        pluginId="vehicleTags"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <State id="vehicleTags" value="[]" />
    <RESTQuery
      id="getVehiclesAndUniforms"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="/admin/service-providers/{{userId.value}}/vehiclesAndUniforms"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "{{ getVehiclesAndUniforms.data}}" }] }}
        pluginId="vehiclesAndUniforms"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <State id="vehiclesAndUniforms" />
    <RESTQuery
      id="getUniformEntities"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/entities?name="
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      showSuccessToaster={false}
    >
      <Event
        event="success"
        method="setValue"
        params={{ ordered: [{ value: "{{getUniformEntities.data.content}}" }] }}
        pluginId="uniformEntities"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <State id="uniformEntities" value="['Entity 1', 'Entity 2','Entity 3']" />
    <RESTQuery
      id="getAddress"
      notificationDuration={4.5}
      query="admin/service-providers/{{userId.value}}/ratesAndCoverage"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      showSuccessToaster={false}
    />
    <Function id="userId" funcBody={include("./lib/userId.js", "string")} />
  </Folder>
  <Folder id="POSTTags">
    <State
      id="modalPhoto"
      value="{
  id: '',
  photoName: '',
  getUrl: '',
  tags: [],
}"
    />
    <RESTQuery
      id="postTags"
      body={
        '[{"key":"tags","value":"{{modalPhoto.value.tags}}"},{"key":"fileId","value":"{{ modalPhoto.value.id }}"},{"key":"entityType","value":"\\"FILE\\""}]'
      }
      bodyType="json"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/{{serviceProviderId.value}}/updateEntityTags"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="POST"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getVehiclesAndUniforms"
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
                  { title: "Tags saved succesfully" },
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
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "Unable to save tags" },
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
  </Folder>
  <Folder id="POSTUniforms">
    <RESTQuery
      id="updateUniformInformation"
      body={
        '[{"key":"uniformOptIn","value":"{{uniformOptinToggle.value}}"},{"key":"uniformEntityIds","value":"{{uniformMultiselect.value.map(entity => entity)}}"},{"key":"uniformSize","value":"{{uniformClothingSize.selectedItem?.value}}"}]'
      }
      bodyType="json"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/{{userId.value}}/updateUniformInformation"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      type="POST"
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getVehiclesAndUniforms"
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
                  { title: "Uniform preferences saved" },
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
        method="showNotification"
        params={{
          ordered: [
            {
              options: {
                ordered: [
                  { notificationType: "error" },
                  { title: "Unable to save uniform preferences" },
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
  </Folder>
</GlobalFunctions>
