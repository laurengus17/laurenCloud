<Container
  id="license_details16"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0px"
  marginType="normal"
  padding="0px"
  showBody={true}
  showBorder={false}
  style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
>
  <View id="b8f80" viewKey="View 1">
    <Container
      id="container67"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden="{{!documents.value.tradeCertifications[i].certificateFiles[0].originalFilename.includes('pdf')}}"
      marginType="normal"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="text82"
          marginType="normal"
          value="<h5>Certification File</h5>"
          verticalAlign="center"
        />
        <Button
          id="btnOpenModalCertification"
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
                    "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.tradeCertifications[i].id],\n  docName: `Certification ${i + 1}`,\n  docType: 'pdf',\n  fileUrl: documents.value.tradeCertifications[i].certificateFiles[0].getUrl,\n  currentStatus: documents.value.tradeCertifications[i].complianceStatus,\n  tags: documents.value.tradeCertifications[i].tags,\n  entityType: 'TRADECERTIFICATION',\n  isWithinModal: true,\n} }}",
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
      <View id="a380d" viewKey="View 1">
        <PDFViewer
          id="tradeCertificatePdf"
          src="{{documents.value.tradeCertifications[i].certificateFiles[0].getUrl}}"
        />
      </View>
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.tradeCertifications[i].id],\n  docName: `Certification ${i + 1}`,\n  docType: 'pdf',\n  fileUrl: documents.value.tradeCertifications[i].certificateFiles[0].getUrl,\n  currentStatus: documents.value.tradeCertifications[i].complianceStatus,\n  tags: documents.value.tradeCertifications[i].tags,\n  entityType: 'TRADECERTIFICATION',\n  isWithinModal: true,\n} }}",
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
    </Container>
    <TextInput
      id="textInput228"
      disabled=""
      label="Classification"
      labelPosition="top"
      marginType="normal"
      placeholder="Classification"
      readOnly="true"
      value="{{documents.value.tradeCertifications[i].certificationClassification}}"
    />
    <Select
      id="select53"
      data="{{ certificationTypes.value }}"
      disabled=""
      emptyMessage="No options"
      label="Type"
      labelPosition="top"
      labels="{{ item.label }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      readOnly="true"
      showSelectionIndicator={true}
      value="{{documents.value.tradeCertifications[i].certificationType}}"
      values="{{ item.value }}"
    />
    <TextInput
      id="textInput231"
      disabled=""
      label="Certification Number"
      labelPosition="top"
      marginType="normal"
      placeholder="Number"
      readOnly="true"
      value="{{documents.value.tradeCertifications[i].certificationNumber}}"
    />
    <TextInput
      id="textInput229"
      label="Holder Name"
      labelPosition="top"
      marginType="normal"
      placeholder="Name"
      readOnly="true"
      value="{{documents.value.tradeCertifications[i].holderName}}"
    />
    <TextInput
      id="textInput230"
      label="Issued By"
      labelPosition="top"
      marginType="normal"
      placeholder="Issuer"
      readOnly="true"
      value="{{documents.value.tradeCertifications[i].issuedBy}}"
    />
    <Date
      id="date23"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Issued"
      labelPosition="top"
      marginType="normal"
      readOnly="true"
      value="{{documents.value.tradeCertifications[i].issuedOn}}"
    />
    <Date
      id="date22"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Expiration Date"
      labelPosition="top"
      marginType="normal"
      readOnly="true"
      value="{{documents.value.tradeCertifications[i].expirationDate}}"
    />
    <Select
      id="select54"
      data="{{ statesList.value }}"
      emptyMessage="No options"
      label="State"
      labelPosition="top"
      labels="{{ item.label }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="State"
      readOnly="true"
      showSelectionIndicator={true}
      value="{{documents.value.tradeCertifications[i].state}}"
      values="{{ item.value }}"
    />
    <TextInput
      id="textInput232"
      label="Notes"
      labelPosition="top"
      marginType="normal"
      placeholder="Notes"
      readOnly="true"
      value="{{documents.value.tradeCertifications[i].notes}}"
    />
    <Container
      id="container91"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden="{{documents.value.tradeCertifications[i].certificateFiles[0].originalFilename.includes('pdf')}}"
      marginType="normal"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showFooter={true}
    >
      <Header>
        <Text
          id="containerTitle132"
          marginType="normal"
          value="#### {{ item }}"
          verticalAlign="center"
        />
      </Header>
      <View id="a380d" viewKey="View 1">
        <Image
          id="tradeCertificationImage"
          horizontalAlign="center"
          src="{{documents.value.tradeCertifications[i].certificateFiles[0].getUrl}}"
        >
          <Event
            event="click"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.tradeCertifications[i].id],\n  docName: `Certification ${i + 1}`,\n  fileUrl: documents.value.tradeCertifications[i].certificateFiles[0].getUrl,\n  currentStatus: documents.value.tradeCertifications[i].complianceStatus,\n  tags: documents.value.tradeCertifications[i].tags,\n  entityType: 'TRADECERTIFICATION',\n  isWithinModal: true,\n} }}",
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
        <Text
          id="text85"
          marginType="normal"
          value="<h5>Certification Image</h5>"
          verticalAlign="center"
        />
      </Footer>
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.tradeCertifications[i].id],\n  docName: `Certification ${i + 1}`,\n  fileUrl: documents.value.tradeCertifications[i].certificateFiles[0].getUrl,\n  currentStatus: documents.value.tradeCertifications[i].complianceStatus,\n  tags: documents.value.tradeCertifications[i].tags,\n  entityType: 'TRADECERTIFICATION',\n  isWithinModal: true,\n} }}",
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
    </Container>
  </View>
</Container>
