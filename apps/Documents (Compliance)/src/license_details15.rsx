<Container
  id="license_details15"
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
      id="licensePDFcontainer"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden="{{!documents.value.tradeLicenses[i].licenseFiles[0].originalFilename.includes('pdf')}}"
      marginType="normal"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="licenseTitle"
          marginType="normal"
          value="<h5>License File</h5>"
          verticalAlign="center"
        />
        <Button
          id="btnOpenModalLicense"
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
                    "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.tradeLicenses[i].id],\n  docName: `Trade License ${i + 1}`,\n  docType: 'pdf',\n  fileUrl: documents.value.tradeLicenses[i].licenseFiles[0].getUrl,\n  currentStatus: documents.value.tradeLicenses[i].complianceStatus,\n  tags: documents.value.tradeLicenses[i].tags,\n  entityType: 'TRADELICENSE',\n  isWithinModal: true,\n} }}",
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
          id="tradeLicensePdf"
          hidden=""
          src="{{documents.value.tradeLicenses[i].licenseFiles[0].getUrl}}"
        />
      </View>
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.tradeLicenses[i].id],\n  docName: `Trade License ${i + 1}`,\n  docType: 'pdf',\n  fileUrl: documents.value.tradeLicenses[i].licenseFiles[0].getUrl,\n  currentStatus: documents.value.tradeLicenses[i].complianceStatus,\n  tags: documents.value.tradeLicenses[i].tags,\n  entityType: 'TRADELICENSE',\n  isWithinModal: true,\n} }}",
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
      id="TradeLicense_Classification"
      disabled=""
      label="Classification"
      labelPosition="top"
      marginType="normal"
      placeholder="Classification"
      readOnly="true"
      value="{{documents.value.tradeLicenses[i].licenseClassification}}"
    />
    <TextInput
      id="TradeLicense_LicenseNumber"
      disabled=""
      label="License Number"
      labelPosition="top"
      marginType="normal"
      placeholder="Number"
      readOnly="true"
      value="{{documents.value.tradeLicenses[i].licenseNumber}}"
    />
    <TextInput
      id="TradeLicense_HolderName"
      disabled=""
      label="Holder Name"
      labelPosition="top"
      marginType="normal"
      placeholder="Name"
      readOnly="true"
      value="{{documents.value.tradeLicenses[i].holderName}}"
    />
    <TextInput
      id="TradeLicense_IssuedBy"
      disabled=""
      label="Issued By"
      labelPosition="top"
      marginType="normal"
      placeholder="Issued By"
      readOnly="true"
      value="{{documents.value.tradeLicenses[i].issuedBy}}"
    />
    <Date
      id="TradeLicense_IssuedOn"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled=""
      iconBefore="bold/interface-calendar"
      label="Issued On"
      labelPosition="top"
      marginType="normal"
      readOnly="true"
      value="{{documents.value.tradeLicenses[i].issuedOn}}"
    />
    <Date
      id="TradeLicense_ExpirationDate"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled=""
      iconBefore="bold/interface-calendar"
      label="Expiration Date"
      labelPosition="top"
      marginType="normal"
      readOnly="true"
      value="{{documents.value.tradeLicenses[i].expirationDate}}"
    />
    <Select
      id="TradeLicense_State"
      data="{{ statesList.value }}"
      disabled=""
      emptyMessage="No options"
      label="State"
      labelPosition="top"
      labels="{{ statesList.value[i].label}}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="State"
      readOnly="true"
      showSelectionIndicator={true}
      value="{{documents.value.tradeLicenses[i].state}}"
      values="{{ statesList.value[i].value}}"
    >
      <Option
        id="dfc7b"
        disabled={false}
        hidden={false}
        label="Alabama"
        value="AL"
      />
    </Select>
    <Container
      id="licensePDFcontainer2"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden="{{documents.value.tradeLicenses[i].licenseFiles[0].originalFilename.includes('pdf')}}"
      marginType="normal"
      overflowType="hidden"
      padding="12px"
      showBody={true}
      showFooter={true}
    >
      <Header>
        <Text
          id="containerTitle131"
          marginType="normal"
          value="#### {{ item }}"
          verticalAlign="center"
        />
      </Header>
      <View id="a380d" viewKey="View 1">
        <Image
          id="tradeLicenseImage"
          horizontalAlign="center"
          src="{{documents.value.tradeLicenses[i].licenseFiles[0].getUrl}}"
        >
          <Event
            event="click"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.tradeLicenses[i].id],\n  docName: `Trade License ${i + 1}`,\n  fileUrl: documents.value.tradeLicenses[i].licenseFiles[0].getUrl,\n  currentStatus: documents.value.tradeLicenses[i].complianceStatus,\n  tags: documents.value.tradeLicenses[i].tags,\n  entityType: 'TRADELICENSE',\n  isWithinModal: true,\n} }}",
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
          id="licenseTitle2"
          marginType="normal"
          value="<h5>License Image</h5>"
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
                "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.tradeLicenses[i].id],\n  docName: `Trade License ${i + 1}`,\n  fileUrl: documents.value.tradeLicenses[i].licenseFiles[0].getUrl,\n  currentStatus: documents.value.tradeLicenses[i].complianceStatus,\n  tags: documents.value.tradeLicenses[i].tags,\n  entityType: 'TRADELICENSE',\n  isWithinModal: true,\n} }}",
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
