<GlobalFunctions>
  <RESTQuery
    id="getSPDetails"
    query="admin/service-providers/{{ serviceProviderId.value }}"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
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
  <RESTQuery
    id="updateStatusToAlignment"
    body={
      '[{"key":"profileStatus","value":"ALIGNMENT"},{"key":"profileStage","value":"ALIGNMENTSCHEDULINGREQUESTED"}]'
    }
    bodyType="json"
    query="admin/service-providers/{{ serviceProviderId.value }}/updateProfileStatus"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
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
                { notificationType: "info" },
                { title: "Scheduling has been requested" },
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
      pluginId="getSPDetails"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="sendComplianceApprovalEmailSMS"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="updateStatusToRejected"
    body={'[{"key":"profileStatus","value":"REJECTED"}]'}
    bodyType="json"
    query="admin/service-providers/{{ serviceProviderId.value }}/updateProfileStatus"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
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
                { notificationType: "info" },
                { title: "Service Provider has been rejected" },
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
      pluginId="getSPDetails"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <State id="isSPApprovable" />
  <RESTQuery
    id="getSPDocuments"
    query="admin/service-providers/{{ serviceProviderId.value }}/documents"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
  >
    <Event
      event="success"
      method="setValue"
      params={{
        ordered: [
          {
            value:
              "{{ getSPDocuments.data.applicantPhotos.headshot.complianceStatus === \"APPROVED\" &&  getSPDocuments.data.applicantPhotos.waistUp.complianceStatus === \"APPROVED\" &&  /* getSPDocuments.data.driversLicense.frontPhoto.complianceStatus === \"APPROVED\" &&  getSPDocuments.data.driversLicense.backPhoto.complianceStatus === \"APPROVED\" && */\ngetSPDocuments.data.vehicles.every((v) => v.frontPhoto.complianceStatus === 'APPROVED' && v.backPhoto.complianceStatus === 'APPROVED' && v.leftPhoto.complianceStatus === 'APPROVED' &&\n  v.rightPhoto.complianceStatus === 'APPROVED' && v.vinPhoto.complianceStatus === 'APPROVED') }}",
          },
        ],
      }}
      pluginId="isSPApprovable"
      type="state"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="getSPPendingDocsResubmit"
    query="admin/service-providers/{{ serviceProviderId.value }}/documents/compliance/resubmit"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
  />
  <RESTQuery
    id="updateStatusToRevision"
    body={
      '[{"key":"profileStatus","value":" {{ getSPDetails.data.profileStatus === \\"ALIGNMENT\\" ? \\"ALIGNMENT\\" : \\"INREVIEW\\" }}"},{"key":"profileStage","value":"REVISIONREQUESTED"}]'
    }
    bodyType="json"
    query="admin/service-providers/{{ serviceProviderId.value }}/updateProfileStatus"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
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
                { notificationType: "info" },
                { title: "Revision has been requested for Service Provider" },
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
      pluginId="getSPDetails"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="sendResubmitEmail"
    bodyType="json"
    query="admin/service-providers/{{ serviceProviderId.value }}/documents/compliance/resubmit"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    type="POST"
  />
  <RESTQuery
    id="sendRejectionReview"
    body={
      '[{"key":"reason","value":"{{ textAreaReasonRejection.value }}"},{"key":"profileStatus","value":"REJECTED"},{"key":"officerId","value":"{{ getCurrentUser.data.userId }}"}]'
    }
    bodyType="json"
    query="admin/service-providers/{{ serviceProviderId.value }}/review"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    type="POST"
  />
  <RESTQuery
    id="getCurrentUser"
    query="user/me"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
  />
  <RESTQuery
    id="updateStatusToCallInProgress"
    body={
      '[{"key":"profileStatus","value":"ALIGNMENT"},{"key":"profileStage","value":"ALIGNMENTCALLINPROGRESS"}]'
    }
    bodyType="json"
    query="admin/service-providers/{{ serviceProviderId.value }}/updateProfileStatus"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
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
                { notificationType: "info" },
                { title: "Scheduling has been requested" },
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
      pluginId="getSPDetails"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="updateStatusToCallCancelled"
    body={
      '[{"key":"profileStatus","value":"ALIGNMENT"},{"key":"profileStage","value":"ALIGNMENTCALLCANCELLED"}]'
    }
    bodyType="json"
    isMultiplayerEdited={false}
    query="admin/service-providers/{{ serviceProviderId.value }}/updateProfileStatus"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
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
                { notificationType: "info" },
                { title: "Alignment call has been cancelled" },
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
      pluginId="getSPDetails"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="sendCancellationEmail"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="sendCancellationReview"
    body={
      '[{"key":"reason","value":"{{ textAreaReasonCancellation.value }}"},{"key":"profileStatus","value":"ALIGNMENT"},{"key":"officerId","value":"{{ getCurrentUser.data.userId }}"},{"key":"profileStage","value":"ALIGNMENTCALLCANCELLED"}]'
    }
    bodyType="json"
    isMultiplayerEdited={false}
    query="admin/service-providers/{{ serviceProviderId.value }}/review"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    type="POST"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getSPDetails"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="updateStatusToRescheduleRequest"
    body={
      '[{"key":"profileStatus","value":"ALIGNMENT"},{"key":"profileStage","value":"ALIGNMENTCALLRESCHEDULEREQUESTED"}]'
    }
    bodyType="json"
    isMultiplayerEdited={false}
    query="admin/service-providers/{{ serviceProviderId.value }}/updateProfileStatus"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
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
                { notificationType: "info" },
                { title: "A request for reschedule has been sent" },
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
      pluginId="getSPDetails"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="sendRescheduleEmail"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <RESTQuery
    id="sendComplianceApprovalEmailSMS"
    bodyType="json"
    isMultiplayerEdited={false}
    query="admin/service-providers/{{ serviceProviderId.value }}/submitCompliance?calendlyLink={{ textInputCalendlyLink.value }}"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    successMessage="Scheduling Request has been sent to the Service Provider"
    type="PUT"
  />
  <State id="displayMode" value="{{ mode.value }}" />
  <RESTQuery
    id="sendCancellationEmail"
    bodyType="json"
    isMultiplayerEdited={false}
    query="admin/service-providers/{{ serviceProviderId.value }}/cancelAlignmentCall?"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    type="PUT"
  />
  <RESTQuery
    id="sendRescheduleEmail"
    bodyType="json"
    isMultiplayerEdited={false}
    query="admin/service-providers/{{ serviceProviderId.value }}/rescheduleAlignmentCall?calendlyLink={{ textInputCalendlyLink2.value }}"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    type="PUT"
  />
  <RESTQuery
    id="updateStatusToCompliant"
    body={
      '[{"key":"profileStatus","value":"COMPLIANT"},{"key":"profileStage","value":"ALIGNMENTCALLCOMPLETED"}]'
    }
    bodyType="json"
    isMultiplayerEdited={false}
    query="admin/service-providers/{{ serviceProviderId.value }}/updateProfileStatus"
    resourceName="b23ec5e9-7729-4aca-ad15-2bb2567ee379"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
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
                { notificationType: "info" },
                { title: "Service Provider is now Compliant" },
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
      pluginId="getSPDetails"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </RESTQuery>
  <SqlTransformQuery
    id="queryUpdateCompliant"
    isMultiplayerEdited={false}
    query={include("./lib/queryUpdateCompliant.sql", "string")}
    resourceName="SQL Transforms"
    resourceTypeOverride=""
  >
    <Event
      event="success"
      method="run"
      params={{
        ordered: [
          {
            src: "if (isCompliant.value === true) {\n  updateStatusToCompliant.trigger()\n}",
          },
        ],
      }}
      pluginId=""
      type="script"
      waitMs="0"
      waitType="debounce"
    />
  </SqlTransformQuery>
  <SqlTransformQuery
    id="querySPDetailsTrigger"
    isMultiplayerEdited={false}
    query={include("./lib/querySPDetailsTrigger.sql", "string")}
    resourceName="SQL Transforms"
    resourceTypeOverride=""
  >
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
      pluginId="getSPDetails"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlTransformQuery>
  <GlobalWidgetQuery
    id="getSpDetails"
    defaultValue=""
    resourceName="GlobalWidgetQuery"
    value=""
  />
</GlobalFunctions>
