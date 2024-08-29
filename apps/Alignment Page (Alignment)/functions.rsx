<GlobalFunctions>
  <Folder id="GETExclusionOptions">
    <RESTQuery
      id="getEntityOptions"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/entities?name="
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
        params={{ ordered: [{ value: "{{getEntityOptions.data.content}}" }] }}
        pluginId="entityOptions"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="getBrandOptions"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/brands?name="
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
        params={{ ordered: [{ value: "{{getBrandOptions.data.content}}" }] }}
        pluginId="brandOptions"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="getClientOptions"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/clients?name="
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
        params={{ ordered: [{ value: "{{getClientOptions.data.content}}" }] }}
        pluginId="clientOptions"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="getExclusionTypesOptions"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/exclusion-types"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <RESTQuery
      id="getWorkOrderTypesOptions"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/work-order-types?name="
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
        params={{
          ordered: [{ value: "{{getWorkOrderTypesOptions.data.content}}" }],
        }}
        pluginId="workOrderTypesOptions"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="getPriorityOptions"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/priorities?name="
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
        params={{ ordered: [] }}
        pluginId=""
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="getSiteOptions"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/sites?brandId={{brandSiteSelect.value}}&name="
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      watchedParams={["brandSiteSelect.value"]}
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="constructSiteOptions"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="getStateOptions"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/states?name="
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
        params={{ ordered: [{ value: "{{getClientOptions.data.content}}" }] }}
        pluginId="clientOptions"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
  </Folder>
  <Folder id="GETTableData">
    <RESTQuery
      id="getSPExclusions"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/{{serviceProviderId.value}}"
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
        params={{ ordered: [{ value: "{{getSPExclusions.data}}" }] }}
        pluginId="exclusionsTableContent"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="siteTableContent"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <JavascriptQuery
      id="siteTableContent"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={4.5}
      query={include("./lib/siteTableContent.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <State
      id="exclusionsTableContent"
      _persistedValueGetter={null}
      _persistedValueSetter={null}
      persistedValueKey=""
      persistValue={false}
    />
  </Folder>
  <Folder id="POSTExclusion">
    <RESTQuery
      id="postExclusion"
      body="{{ saveExclusionPayload.data }}"
      bodyType="raw"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      headers={'[{"key":"Content-Type","value":"application/json"}]'}
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/{{serviceProviderId.value}}/save"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      type="POST"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    >
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="exclusionSelect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="exclusionMultiselect1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="exclusionMultiselect2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="brandSiteSelect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="hide"
        params={{ ordered: [] }}
        pluginId="addExclusionModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="isSaveDisabled"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSPExclusions"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="failure"
        method="hide"
        params={{ ordered: [] }}
        pluginId="addExclusionModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <JavascriptQuery
      id="saveExclusionPayload"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/saveExclusionPayload.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
  </Folder>
  <Folder id="DELETEExclusion">
    <RESTQuery
      id="deleteEntity"
      bodyType="json"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/{{serviceProviderId.value}}/{{entitiesTable.selectedRow.id}}"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      type="DELETE"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
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
                  { title: "Exclusion removed successfully!" },
                  { description: "" },
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
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSPExclusions"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="deleteClient"
      bodyType="json"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/{{serviceProviderId.value}}/{{clientsTable.selectedRow.id}}"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      type="DELETE"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
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
                  { title: "Exclusion removed successfully!" },
                  { description: "" },
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
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSPExclusions"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="deleteBrand"
      bodyType="json"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/{{serviceProviderId.value}}/{{brandsTable.selectedRow.id}}"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      type="DELETE"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
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
                  { title: "Exclusion removed successfully!" },
                  { description: "" },
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
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSPExclusions"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="deleteWorkOrder"
      bodyType="json"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/{{serviceProviderId.value}}/{{workOrdersTable.selectedRow.id}}"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      type="DELETE"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
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
                  { title: "Exclusion removed successfully!" },
                  { description: "" },
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
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSPExclusions"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="deleteSite"
      bodyType="json"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/{{serviceProviderId.value}}/{{sitesTable.selectedRow.id}}"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      type="DELETE"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
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
                  { title: "Exclusion removed successfully!" },
                  { description: "" },
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
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSPExclusions"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="deleteState"
      bodyType="json"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/{{serviceProviderId.value}}/{{statesTable.selectedRow.id}}"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      type="DELETE"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
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
                  { title: "Exclusion removed successfully!" },
                  { description: "" },
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
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSPExclusions"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
    <RESTQuery
      id="deletePriority"
      bodyType="json"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query="admin/service-providers/exclusions/{{serviceProviderId.value}}/{{prioritiesTable.selectedRow.id}}"
      resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
      resourceTypeOverride=""
      runWhenModelUpdates={false}
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      type="DELETE"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
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
                  { title: "Exclusion removed successfully!" },
                  { description: "" },
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
        event="success"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSPExclusions"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </RESTQuery>
  </Folder>
  <Folder id="OptionsData">
    <JavascriptQuery
      id="constructSiteOptions"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/constructSiteOptions.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <JavascriptQuery
      id="constructOptions"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      isMultiplayerEdited={false}
      notificationDuration={4.5}
      query={include("./lib/constructOptions.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <Function
      id="statesOptions"
      funcBody={include("./lib/statesOptions.js", "string")}
    />
  </Folder>
  <Folder id="Helpers">
    <JavascriptQuery
      id="isSaveDisabled"
      errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
      notificationDuration={4.5}
      query={include("./lib/isSaveDisabled.js", "string")}
      resourceName="JavascriptQuery"
      showSuccessToaster={false}
      transformer="// Query results are available as the `data` variable
return data"
      workflowActionType={null}
      workflowBlockUuid={null}
      workflowRunId={null}
    />
    <Function
      id="isContentEmpty"
      funcBody={include("./lib/isContentEmpty.js", "string")}
    />
  </Folder>
  <Folder id="MockData">
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
  </Folder>
  <GlobalWidgetQuery
    id="getSummaryTrigger"
    defaultValue=""
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    resourceName="GlobalWidgetQuery"
    transformer="// Query results are available as the `data` variable
return data"
    value=""
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</GlobalFunctions>
