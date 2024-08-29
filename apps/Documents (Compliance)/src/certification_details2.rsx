<Container
  id="certification_details2"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  marginType="normal"
  padding="0 0 24px 0"
  showBody={true}
  style={{
    ordered: [{ borderRadius: "0px" }, { border: "rgba(224, 224, 224, 0)" }],
  }}
>
  <Header>
    <Text
      id="containerTitle111"
      marginType="normal"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="d0f9b" viewKey="View 1">
    <Text
      id="containerTitle112"
      marginType="normal"
      value="#### Certification {{ i + 1 }}"
      verticalAlign="center"
    />
    <Alert
      id="alert4"
      description=""
      hidden="{{ profileStatus.value === 'REJECTED' }}"
      title="{{ documents.value.tradeCertifications[i].complianceStatus }}"
      type="{{ documents.value.tradeCertifications[i].complianceStatus === 'APPROVED' ? 'success' : 'warning' }}"
    />
    <SplitButton
      id="splitButton31"
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
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.tradeCertifications[i].id],\n  docName: `Certification ${i + 1}`,\n  docType: 'pdf',\n  fileUrl: documents.value.tradeCertifications[i].certificateFiles[0].getUrl,\n  complianceStatus: 'APPROVED',\n  currentStatus: documents.value.tradeCertifications[i].complianceStatus,\n  isWithinModal: false,\n} }}",
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
      </Option>
      <Option id="ba9c6" label="Request Resubmission">
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.tradeCertifications[i].id],\n  docName: `Certification ${i + 1}`,\n  docType: 'pdf',\n  fileUrl: documents.value.tradeCertifications[i].certificateFiles[0].getUrl,\n  complianceStatus: 'RESUBMIT',\n  currentStatus: documents.value.tradeCertifications[i].complianceStatus,\n  tags: documents.value.tradeCertifications[i].tags,\n  isWithinModal: true,\n} }}",
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
      </Option>
      <Option id="289fc" label="Not Applicable">
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.tradeCertifications[i].id],\n  docName: `Certification ${i + 1}`,\n  docType: 'pdf',\n  fileUrl: documents.value.tradeCertifications[i].certificateFiles[0].getUrl,\n  complianceStatus: 'NOTAPPLICABLE',\n  currentStatus: documents.value.tradeCertifications[i].complianceStatus,\n  isWithinModal: false,\n} }}",
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
      </Option>
      <Option id="afa88" disabled={false} hidden={false} label="Pending">
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.tradeCertifications[i].id],\n  docName: `Certification ${i + 1}`,\n  docType: 'pdf',\n  fileUrl: documents.value.tradeCertifications[i].certificateFiles[0].getUrl,\n  complianceStatus: 'PENDING',\n  currentStatus: documents.value.tradeCertifications[i].complianceStatus,\n  isWithinModal: false,\n} }}",
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
      </Option>
    </SplitButton>
    <Include src="./license_details16.rsx" />
  </View>
</Container>
