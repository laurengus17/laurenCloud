<Container
  id="ApplicantWaistUp_Container"
  enableFullBleed={true}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  hidden="{{ !documents.value.applicantPhotos.waistUp }}"
  marginType="normal"
  padding="12px"
  showBody={true}
  showFooter={true}
  showHeader={true}
>
  <Header>
    <Text
      id="ApplicantWaistUp_Text"
      marginType="normal"
      value="##### Applicant - Waist Up"
      verticalAlign="center"
    />
    <Button
      id="btnOpenModalWaistUp"
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
                "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.applicantPhotos.waistUp.file.id],\n  docName: 'Applicant - Waist Up',\n  fileUrl: documents.value.applicantPhotos.waistUp.file.getUrl,\n  currentStatus: documents.value.applicantPhotos.waistUp.complianceStatus,\n  tags: documents.value.applicantPhotos.waistUp.tags,\n  isWithinModal: true,\n} }}",
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
      id="ApplicantWaistUp_image"
      horizontalAlign="center"
      margin="0"
      marginType="normal"
      src="{{ documents.value.applicantPhotos.waistUp.file.getUrl }}"
      style={{ ordered: [{ borderRadius: "0px" }] }}
    >
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.applicantPhotos.waistUp.file.id],\n  docName: 'Applicant - Waist Up',\n  fileUrl: documents.value.applicantPhotos.waistUp.file.getUrl,\n  currentStatus: documents.value.applicantPhotos.waistUp.complianceStatus,\n  tags: documents.value.applicantPhotos.waistUp.tags,\n  isWithinModal: true,\n} }}",
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
      id="alert15"
      description=""
      hidden="{{ profileStatus.value === 'REJECTED' }}"
      title="{{documents.value.applicantPhotos.waistUp.complianceStatus}}"
      type="{{documents.value.applicantPhotos.waistUp.complianceStatus === 'APPROVED' ? 'success' : 'warning'}}"
    />
    <SplitButton
      id="splitButton28"
      _colorByIndex={["", "", "", ""]}
      _fallbackTextByIndex={["", "", "", ""]}
      _imageByIndex={["", "", "", ""]}
      _values={["", "", "", "Action 4"]}
      disabled=""
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
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.applicantPhotos.waistUp.file.id],\n  docName: 'Applicant - Waist Up',\n  fileUrl: documents.value.applicantPhotos.waistUp.file.getUrl,\n  complianceStatus: 'APPROVED',\n  currentStatus: documents.value.applicantPhotos.waistUp.complianceStatus,\n  isWithinModal: false,\n} }}",
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
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.applicantPhotos.waistUp.file.id],\n  docName: 'Applicant - Waist Up',\n  fileUrl: documents.value.applicantPhotos.waistUp.file.getUrl,\n  complianceStatus: 'RESUBMIT',\n  currentStatus: documents.value.applicantPhotos.waistUp.complianceStatus,\n  tags: documents.value.applicantPhotos.waistUp.tags,\n  isWithinModal: true,\n} }}",
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
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.applicantPhotos.waistUp.file.id],\n  docName: 'Applicant - Waist Up',\n  fileUrl: documents.value.applicantPhotos.waistUp.file.getUrl,\n  complianceStatus: 'NOTAPPLICABLE',\n  currentStatus: documents.value.applicantPhotos.waistUp.complianceStatus,\n  isWithinModal: false\n} }}",
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
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.applicantPhotos.waistUp.file.id],\n  docName: 'Applicant - Waist Up',\n  fileUrl: documents.value.applicantPhotos.waistUp.file.getUrl,\n  complianceStatus: 'PENDING',\n  currentStatus: documents.value.applicantPhotos.waistUp.complianceStatus,\n  isWithinModal: false,\n} }}",
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
    params={{ ordered: [{ viewKey: "ApplicantWaistUp" }] }}
    pluginId="modalContainer"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
</Container>
