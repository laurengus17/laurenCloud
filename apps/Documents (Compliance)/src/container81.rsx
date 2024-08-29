<Container
  id="container81"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin=""
  marginType="normal"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
  showHeaderBorder={false}
>
  <Header>
    <Text
      id="containerTitle127"
      marginType="normal"
      value="#### COI {{ i + 1 }} - MM/DD/YYYY - Cert# 000000 - Rev# 00"
      verticalAlign="center"
    />
    <Alert
      id="alert3"
      description=""
      hidden="{{ profileStatus.value === 'REJECTED' }}"
      title="{{ documents.value.cois[i].complianceStatus }}"
      type="{{ documents.value.cois[i].complianceStatus === 'APPROVED' ? 'success' : 'warning' }}"
    />
    <SplitButton
      id="splitButton32"
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
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.cois[i].id],\n  docName: `COI ${i + 1}`,\n  docType: 'pdf',\n  fileUrl: documents.value.cois[i].coiFiles[0].getUrl,\n  complianceStatus: 'APPROVED',\n  currentStatus: documents.value.cois[i].complianceStatus,\n  isWithinModal: false,\n} }}",
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
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.cois[i].id],\n  docName: `COI ${i + 1}`,\n  docType: 'pdf',\n  fileUrl: documents.value.cois[i].coiFiles[0].getUrl,\n  complianceStatus: 'RESUBMIT',\n  currentStatus: documents.value.cois[i].complianceStatus,\n  tags: documents.value.cois[i].tags,\n  isWithinModal: true,\n} }}",
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
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.cois[i].id],\n  docName: `COI ${i + 1}`,\n  docType: 'pdf',\n  fileUrl: documents.value.cois[i].coiFiles[0].getUrl,\n  complianceStatus: 'NOTAPPLICABLE',\n  currentStatus: documents.value.cois[i].complianceStatus,\n  isWithinModal: false,\n} }}",
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
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.cois[i].id],\n  docName: `COI ${i + 1}`,\n  docType: 'pdf',\n  fileUrl: documents.value.cois[i].coiFiles[0].getUrl,\n  complianceStatus: 'PENDING',\n  currentStatus: documents.value.cois[i].complianceStatus,\n  isWithinModal: false,\n} }}",
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
  </Header>
  <View id="379eb" viewKey="View 1">
    <Include src="./coiFileContainer.rsx" />
    <Text
      id="text83"
      marginType="normal"
      value="##### Producer"
      verticalAlign="center"
    />
    <TextInput
      id="textInput233"
      disabled="true"
      label="Producer Name"
      labelPosition="top"
      marginType="normal"
      placeholder="Insurance Agent/Broker Name"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.producer.name }}"
    />
    <TextInput
      id="textInput238"
      disabled="true"
      label="Producer Contact Name"
      labelPosition="top"
      marginType="normal"
      placeholder="Contact Name"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.producer.name }}"
    />
    <TextArea
      id="textArea7"
      autoResize={true}
      disabled="true"
      label="Producer Address"
      labelPosition="top"
      marginType="normal"
      minLines={2}
      placeholder="Enter value"
      value="{{ getSPDocuments.data.cois[i].visionCoi.producer.address }}"
    />
    <TextInput
      id="textInput239"
      disabled="true"
      label="Producer Phone"
      labelPosition="top"
      marginType="normal"
      placeholder="000-000-0000"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.producer.phone }}"
    />
    <TextInput
      id="textInput240"
      disabled="true"
      label="Producer Fax"
      labelPosition="top"
      marginType="normal"
      placeholder="000-000-0000"
      style={{ ordered: [] }}
      value="{{documentsAdmin.data.cois[i].email}}"
    />
    <TextInput
      id="textInput241"
      disabled="true"
      label="Producer Email"
      labelPosition="top"
      marginType="normal"
      placeholder="Producer Email"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.producer.email }}"
    />
    <Text
      id="text84"
      marginType="normal"
      value="##### Insured"
      verticalAlign="center"
    />
    <TextInput
      id="textInput242"
      disabled="true"
      label="Insured Name"
      labelPosition="top"
      marginType="normal"
      placeholder="Insured Name (as it appears on W9)"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.insured.name }}"
    />
    <TextArea
      id="textArea8"
      autoResize={true}
      disabled="true"
      label="Insured Address"
      labelPosition="top"
      marginType="normal"
      minLines={2}
      placeholder="Enter value"
      value="{{ getSPDocuments.data.cois[i].visionCoi.insured.address }}"
    />
    <Container
      id="coiFileContainer2"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden="{{documents.value.cois[i].coiFiles[0].originalFilename.includes('pdf')}}"
      marginType="normal"
      padding="0"
      showBody={true}
      showFooter={true}
    >
      <View id="3447a" viewKey="image">
        <Image
          id="coiImage"
          horizontalAlign="center"
          src="{{documents.value.cois[i].coiFiles[i].getUrl}}"
        >
          <Event
            event="click"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.cois[i].id],\n  docName: `COI ${i + 1}`,\n  fileUrl: documents.value.cois[i].coiFiles[0].getUrl,\n  currentStatus: documents.value.cois[i].complianceStatus,\n  tags: documents.value.cois[i].tags,\n  entityType: 'COI',\n  isWithinModal: true,\n} }}",
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
      <View
        id="55238"
        disabled={false}
        hidden={false}
        iconPosition="left"
        viewKey="pdf"
      >
        <PDFViewer
          id="pdf3"
          marginType="normal"
          scaleMode="height"
          scrollSnap={true}
          src="{{documentsAdmin.data.cois[i].coiFiles[i].getUrl}}"
        />
      </View>
      <Footer>
        <Text
          id="containerTitle133"
          marginType="normal"
          value="#### COI Image"
          verticalAlign="center"
        />
        <Icon
          id="icon6"
          horizontalAlign="center"
          icon="bold/interface-validation-check-circle-alternate"
          marginType="normal"
          style={{ ordered: [{ color: "rgba(178, 178, 178, 1)" }] }}
        />
      </Footer>
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.cois[i].id],\n  docName: `COI ${i + 1}`,\n  fileUrl: documents.value.cois[i].coiFiles[0].getUrl,\n  currentStatus: documents.value.cois[i].complianceStatus,\n  tags: documents.value.cois[i].tags,\n  entityType: 'COI',\n  isWithinModal: true,\n} }}",
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
    <Container
      id="container79"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0 0 20px 0"
      marginType="normal"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle125"
          marginType="normal"
          value="##### Insurer(s) Affording Coverage"
          verticalAlign="center"
        />
      </Header>
      <View id="379eb" viewKey="View 1">
        <ListViewBeta
          id="gridView1"
          computeAllInstanceValues={false}
          data="{{ getSPDocuments.data.cois[i].visionCoi.insurers.name }} "
          heightType="auto"
          itemWidth="200px"
          layoutType="grid"
          margin="0"
          marginType="normal"
          numColumns={3}
          padding="0"
        >
          <Container
            id="container80"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            marginType="normal"
            padding="12px"
            showBody={true}
            showHeader={true}
          >
            <Header>
              <Text
                id="containerTitle126"
                marginType="normal"
                value="#### {{ item }}"
                verticalAlign="center"
              />
            </Header>
            <View id="bf5dd" viewKey="View 1">
              <TextInput
                id="textInput280"
                disabled="true"
                label="Insurance Company"
                labelPosition="top"
                marginType="normal"
                placeholder="Enter value"
                value="{{ item }}"
              />
              <TextInput
                id="textInput281"
                disabled="true"
                label="NAIC#"
                labelPosition="top"
                marginType="normal"
                placeholder="Enter value"
              />
            </View>
          </Container>
        </ListViewBeta>
      </View>
    </Container>
    <Include src="./container78.rsx" />
    <Include src="./container77.rsx" />
    <Include src="./container82.rsx" />
    <Include src="./insrD.rsx" />
    <TextArea
      id="textArea5"
      autoResize={true}
      label="Description of Operations / Locactions / Vehicles (Acord 101, Additional Remarks Schedule, may be attached if more space is required)"
      labelPosition="top"
      marginType="normal"
      minLines={2}
      placeholder="Enter value"
      value="{{ getSPDocuments.data.cois[i].visionCoi.description_of_operations }}"
    />
    <TextArea
      id="textArea6"
      autoResize={true}
      label="Certificate Holder"
      labelPosition="top"
      marginType="normal"
      minLines={2}
      placeholder="Enter value"
      value="{{ getSPDocuments.data.cois[i].visionCoi.certificate_holder.name }}"
    />
  </View>
</Container>
