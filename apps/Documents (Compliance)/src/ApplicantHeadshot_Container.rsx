<Container
  id="ApplicantHeadshot_Container"
  enableFullBleed={true}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  hidden="{{ !documents.value.applicantPhotos.headshot }}"
  marginType="normal"
  padding="12px"
  showBody={true}
  showFooter={true}
  showHeader={true}
>
  <Header>
    <Text
      id="ApplicantHeadshot_Text"
      marginType="normal"
      value="##### Applicant - Headshot"
      verticalAlign="center"
    />
    <Button
      id="btnOpenModalHeadshot"
      horizontalAlign="center"
      iconBefore="bold/interface-arrows-expand-5"
      margin="0"
      style={{ ordered: [{ border: "rgba(207, 207, 207, 0)" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="docReviewModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.applicantPhotos.headshot.file.id],\n  docName: 'Applicant - Headshot',\n  fileUrl: documents.value.applicantPhotos.headshot.file.getUrl,\n  currentStatus: documents.value.applicantPhotos.headshot.complianceStatus,\n  tags: documents.value.applicantPhotos.headshot.tags,\n  isWithinModal: true,\n} }}",
            },
          ],
        }}
        pluginId="fileToUpdate"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <View id="621b3" viewKey="View 1">
    <Image
      id="ApplicantHeadshot_image"
      fit="contain"
      horizontalAlign="center"
      margin="0"
      marginType="normal"
      src="{{ documents.value.applicantPhotos.headshot.file.getUrl }}"
      style={{ ordered: [{ borderRadius: "0px" }] }}
    >
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.applicantPhotos.headshot.file.id],\n  docName: 'Applicant - Headshot',\n  fileUrl: documents.value.applicantPhotos.headshot.file.getUrl,\n  currentStatus: documents.value.applicantPhotos.headshot.complianceStatus,\n  tags: documents.value.applicantPhotos.headshot.tags,\n  isWithinModal: true,\n} }}",
            },
          ],
        }}
        pluginId="fileToUpdate"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="docReviewModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Image>
  </View>
  <Footer>
    <Alert
      id="alert16"
      description=""
      hidden="{{ profileStatus.value === 'REJECTED' }}"
      title="{{documents.value.applicantPhotos.headshot.complianceStatus}}"
      type="{{documents.value.applicantPhotos.headshot.complianceStatus === 'APPROVED' ? 'success' : 'warning'}}"
    />
    <SplitButton
      id="splitButton29"
      _colorByIndex={["", "", "", ""]}
      _fallbackTextByIndex={["", "", "", ""]}
      _imageByIndex={["", "", "", ""]}
      _values={["", "", "", "Action 4"]}
      horizontalAlign="right"
      itemMode="static"
      marginType="normal"
      overlayMaxHeight={375}
      showSelectionIndicator={true}
    >
      <Option id="6a489" label="Approve">
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.applicantPhotos.headshot.file.id],\n  docName: 'Applicant - Headshot',\n  fileUrl: documents.value.applicantPhotos.headshot.file.getUrl,\n  complianceStatus: 'APPROVED',\n  currentStatus: documents.value.applicantPhotos.headshot.complianceStatus,\n  isWithinModal: false,\n} }}",
              },
            ],
          }}
          pluginId="fileToUpdate"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updateDocComplianceStatus"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="getSpDetailsTrigger"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="ba9c6" label="Request Resubmission">
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.applicantPhotos.headshot.file.id],\n  docName: 'Applicant - Headshot',\n  fileUrl: documents.value.applicantPhotos.headshot.file.getUrl,\n  complianceStatus: 'RESUBMIT',\n  currentStatus: documents.value.applicantPhotos.headshot.complianceStatus,\n  tags: documents.value.applicantPhotos.headshot.tags,\n  isWithinModal: true,\n} }}",
              },
            ],
          }}
          pluginId="fileToUpdate"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="resubmissionModal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="getSpDetailsTrigger"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="289fc" label="Not Applicable">
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.applicantPhotos.headshot.file.id],\n  docName: 'Applicant - Headshot',\n  fileUrl: documents.value.applicantPhotos.headshot.file.getUrl,\n  complianceStatus: 'NOTAPPLICABLE',\n  currentStatus: documents.value.applicantPhotos.headshot.complianceStatus,\n  isWithinModal: false,\n} }}",
              },
            ],
          }}
          pluginId="fileToUpdate"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updateDocComplianceStatus"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="getSpDetailsTrigger"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="afa88" disabled={false} hidden={false} label="Pending">
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.applicantPhotos.headshot.file.id],\n  docName: 'Applicant - Headshot',\n  fileUrl: documents.value.applicantPhotos.headshot.file.getUrl,\n  complianceStatus: 'PENDING',\n  currentStatus: documents.value.applicantPhotos.headshot.complianceStatus,\n  isWithinModal: false,\n} }}",
              },
            ],
          }}
          pluginId="fileToUpdate"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updateDocComplianceStatus"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="getSpDetailsTrigger"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
    </SplitButton>
  </Footer>
  <Event
    event="click"
    method="show"
    params={{ ordered: [] }}
    pluginId="modalFrame"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="click"
    method="setCurrentView"
    params={{ ordered: [{ viewKey: "ApplicantHeadshot" }] }}
    pluginId="modalContainer"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
</Container>
