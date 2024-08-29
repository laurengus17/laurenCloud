<Container
  id="spDetailsHeader"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  loading="false"
  margin="0"
  marginType="none"
  padding="18px 12px"
  showBody={true}
  showBorder={false}
  showHeader="false"
  style={{ ordered: [{ borderRadius: "0px" }] }}
>
  <View id="2598f" viewKey="View 1">
    <Include src="./container61.rsx" />
    <Include src="./container62.rsx" />
    <Container
      id="postAlignmentActionsContainer"
      disabledByIndex={[]}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden={
        '{{ displayMode.value !== "post-alignment"  || getSPDetails.isFetching }}'
      }
      hiddenByIndex={[]}
      iconByIndex={[]}
      iconPositionByIndex={[]}
      labels={[]}
      loading=""
      margin="0"
      marginType="normal"
      overflowType="hidden"
      padding="0"
      showBody={true}
      showBorder={false}
      showHeader="false"
      tooltipByIndex={[]}
      viewKeys={[]}
      views={[]}
    >
      <View id="2598f" viewKey="View 1">
        <Button
          id="button11"
          disabled=""
          marginType="normal"
          style={{ ordered: [] }}
          text="View Work Orders"
        >
          <Event
            event="click"
            method="trigger"
            params={{
              ordered: [
                {
                  options: {
                    object: {
                      onSuccess: null,
                      onFailure: null,
                      additionalScope: null,
                    },
                  },
                },
              ],
            }}
            pluginId="updateStatusToAlignment"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="button12"
          marginType="normal"
          styleVariant="outline"
          text="Escalations"
        >
          <Event
            event="click"
            method="show"
            params={{ ordered: [] }}
            pluginId="modalRequestRevision"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="button10"
          disabled={
            '{{ getSPDetails.data.profileStatus === "REJECTED" || getSPDetails.data.profileStatus === "BANNED" }}'
          }
          marginType="normal"
          style={{ ordered: [{ background: "danger" }] }}
          submitTargetId=""
          text="Reject this Applicant"
        >
          <Event
            event="click"
            method="show"
            params={{ ordered: [] }}
            pluginId="modalRejectSP"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <Button
      id="seeAlignment"
      hidden={'{{ mode.value === "alignment" }}'}
      text="See Alignment"
    >
      <Event
        event="click"
        method="openApp"
        params={{
          ordered: [
            { uuid: "7927c9a0-24e9-11ef-a0cf-ef59c72bcfd1" },
            {
              options: {
                ordered: [
                  {
                    queryParams: [
                      {
                        ordered: [
                          { key: "userId" },
                          { value: "{{serviceProviderId.value}}" },
                        ],
                      },
                    ],
                  },
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
    </Button>
    <Container
      id="complianceActionsContainer"
      disabledByIndex={[]}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden={
        '{{ !new Set(["APPLICANTINFORMATION", "BUSINESSINFORMATION", "RATESANDCOVERAGE", "PAYMENTS", "TRADESANDEQUIPMENT", "DOCUMENTS",  "SIGNINGANDCOMPLIANCE", "APPLICATIONSUBMITTED", "COMPLIANCECHECK", "REVISIONREQUESTED"]).has(getSPDetails.data.profileStage) }}'
      }
      hiddenByIndex={[]}
      iconByIndex={[]}
      iconPositionByIndex={[]}
      labels={[]}
      loading=""
      margin="0"
      marginType="normal"
      overflowType="hidden"
      padding="0"
      showBody={true}
      showBorder={false}
      showHeader="false"
      tooltipByIndex={[]}
      viewKeys={[]}
      views={[]}
    >
      <View id="2598f" viewKey="View 1">
        <Button
          id="button3"
          disabled={
            '{{ !isSPApprovable.value || getSPDetails.data.profileStatus === "REJECTED" }}'
          }
          marginType="normal"
          style={{ ordered: [] }}
          text="Approve for Alignment Call"
          tooltipText={
            '{{ !isSPApprovable.value ? "Pending documents\' approval" : "" }}\n\n'
          }
        >
          <Event
            event="click"
            method="show"
            params={{ ordered: [] }}
            pluginId="modalApproveSP"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="getSpDetails"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="button4"
          disabled={'{{ getSPDetails.data.profileStatus === "REJECTED" }}'}
          marginType="normal"
          styleVariant="outline"
          text="Request Revision"
        >
          <Event
            event="click"
            method="show"
            params={{ ordered: [] }}
            pluginId="modalRequestRevision"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="getSpDetails"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="button2"
          disabled={'{{ getSPDetails.data.profileStatus === "REJECTED" }}'}
          marginType="normal"
          style={{ ordered: [{ background: "danger" }] }}
          submitTargetId=""
          text="Reject this Applicant"
        >
          <Event
            event="click"
            method="show"
            params={{ ordered: [] }}
            pluginId="modalRejectSP"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="getSpDetails"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </View>
    </Container>
    <Container
      id="alignmentActionsContainer2"
      disabledByIndex={[]}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden={
        '{{ !new Set(["ALIGNMENTSCHEDULINGREQUESTED", "ALIGNMENTCALLRESCHEDULEREQUESTED", "ALIGNMENTCALLSCHEDULED", "ALIGNMENTCALLCANCELLED", "ALIGNMENTCALLINPROGRESS", "ALIGNMENTCALLCOMPLETED", "ALIGNMENTOFFICERREPORTCARD"]).has(getSPDetails.data.stageProgress.currentStage) }}'
      }
      hiddenByIndex={[]}
      iconByIndex={[]}
      iconPositionByIndex={[]}
      labels={[]}
      loading=""
      margin="0"
      marginType="normal"
      overflowType="hidden"
      padding="0"
      showBody={true}
      showBorder={false}
      showHeader="false"
      tooltipByIndex={[]}
      viewKeys={[]}
      views={[]}
    >
      <View id="2598f" viewKey="View 1">
        <Text
          id="text89"
          hidden="true"
          horizontalAlign="center"
          value="**Alignment Call: Thurs, May 30 - 10am**"
          verticalAlign="center"
        />
        <Button
          id="button14"
          disabled={'{{ getSPDetails.data.profileStatus === "REJECTED" }}'}
          marginType="normal"
          style={{ ordered: [] }}
          text={
            '{{ \ngetSPDetails.data.profileStage === "ALIGNMENTSCHEDULINGREQUESTED" ? "Resend Scheduling Request" : \ngetSPDetails.data.profileStage === "ALIGNMENTCALLSCHEDULED" ? "Begin Alignment Call" : "Begin Alignment Call"\n}}'
          }
        >
          <Event
            event="click"
            method="run"
            params={{
              ordered: [
                {
                  src: 'if (getSPDetails.data.profileStage === "ALIGNMENTSCHEDULINGREQUESTED") {\n  // resend scheduling request\n  modalResendScheduleRequest.show();\n} else {\n  // begin alignment call\n  utils.openApp("7927c9a0-24e9-11ef-a0cf-ef59c72bcfd1", {queryParams: {\n    userId: serviceProviderId.value\n  }});\n}\n',
                },
              ],
            }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="getSPDetails"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Select
          id="select2"
          disabled="{{getSPDetails.data.profileStatus === 'REJECTED'}}"
          emptyMessage="No options"
          itemMode="static"
          label=""
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Reschedule or Cancel"
          showSelectionIndicator={true}
          style={{ ordered: [{ placeholder: "rgba(13, 13, 13, 1)" }] }}
        >
          <Option id="6b42f" label="Reschedule Call" value="Reschedule Call" />
          <Option
            id="65b72"
            disabled="{{getSPDetails.data.profileStage === 'ALIGNMENTCALLCANCELLED'}}"
            label="Cancel Call"
            value="Cancel Call"
          />
          <Event
            event="change"
            method="run"
            params={{
              ordered: [
                {
                  src: 'const selectedOption = select2.selectedLabel;\n\nif (selectedOption === "Reschedule Call") {\n  // trigger reschedule status update req\n  //  await updateStatusToRescheduleRequest.trigger();\n  modalReschedule.show()\n  \n} else if (selectedOption === "Cancel Call") {\n  modalCancelCall.show();\n}\n\nselect2.resetValue()\n',
                },
              ],
            }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="getSpDetails"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <Select
          id="select3"
          disabled={'{{ getSPDetails.data.profileStatus === "REJECTED" }}'}
          emptyMessage="No options"
          itemMode="static"
          label=""
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="More Actions"
          showSelectionIndicator={true}
          style={{ ordered: [{ placeholder: "rgba(13, 13, 13, 1)" }] }}
        >
          <Option
            id="6b42f"
            label="Request Revision"
            value="Request Revision"
          />
          <Option
            id="65b72"
            label="Reject This Applicant"
            value="Reject This Applicant"
          />
          <Event
            event="change"
            method="run"
            params={{
              ordered: [
                {
                  src: 'const selectedOption = select3.selectedLabel;\n\nif (selectedOption === "Request Revision") {\n  modalRequestRevision.show()\n} else if (selectedOption === "Reject This Applicant") {\n  modalRejectSP.show();\n}\n\nselect3.resetValue()\n',
                },
              ],
            }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="getSpDetails"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
      </View>
    </Container>
  </View>
</Container>
