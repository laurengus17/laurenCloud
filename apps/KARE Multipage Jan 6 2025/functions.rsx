<GlobalFunctions>
  <JavascriptQuery
    id="userAccess"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("./lib/userAccess.js", "string")}
    resourceName="JavascriptQuery"
    runWhenPageLoads={true}
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <State id="UAvariable" value="{{ userAccess.data }}" />
  <State
    id="groups"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{{formatDataAsObject(current_user.groups)}}"
  />
  <State
    id="salesVar"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
    value="{{current_user.firstName['0'].concat(current_user.lastName['0'])}}"
  />
</GlobalFunctions>
