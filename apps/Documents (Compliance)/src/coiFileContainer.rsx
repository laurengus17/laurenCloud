<Container
  id="coiFileContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  hidden="{{!documents.value.cois[i].coiFiles[0].originalFilename.includes('pdf')}}"
  marginType="normal"
  padding="0"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle115"
      marginType="normal"
      value="#### COI Image"
      verticalAlign="center"
    />
    <Button
      id="btnOpenModalCOI"
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
                "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.cois[i].id],\n  docName: `COI ${i + 1}`,\n  docType: 'pdf',  \n  fileUrl: documents.value.cois[i].coiFiles[0].getUrl,\n  currentStatus: documents.value.cois[i].complianceStatus,\n  tags: documents.value.cois[i].tags,\n  entityType: 'COI',\n  isWithinModal: true,\n} }}",
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
  <View id="3447a" viewKey="image">
    <PDFViewer id="pdf2" src="{{documents.value.cois[i].coiFiles[i].getUrl}}" />
  </View>
  <View
    id="55238"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="pdf"
  >
    <PDFViewer
      id="pdf1"
      marginType="normal"
      scaleMode="height"
      scrollSnap={true}
      src="{{documentsAdmin.data.cois[i].coiFiles[i].getUrl}}"
    />
  </View>
  <Footer>
    <Icon
      id="icon5"
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
            "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.cois[i].id],\n  docName: `COI ${i + 1}`,\n  docType: 'pdf',  \n  fileUrl: documents.value.cois[i].coiFiles[0].getUrl,\n  currentStatus: documents.value.cois[i].complianceStatus,\n  tags: documents.value.cois[i].tags,\n  entityType: 'COI',\n  isWithinModal: true,\n} }}",
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
