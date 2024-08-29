<Container
  id="container87"
  enableFullBleed={true}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  padding="12px"
  showBody={true}
  showFooter={true}
  showHeader={true}
>
  <Header>
    <Text id="vehicleBack" value="#### Vehicle - Back" verticalAlign="center" />
    <Button
      id="btnOpenModalVehicleBack"
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
                "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.vehicles[i].backPhoto.file.id],\n  docName: `Vehicle ${i + 1} - Back`,\n  fileUrl: documents.value.vehicles[i].backPhoto.file.getUrl,\n  currentStatus: documents.value.vehicles[i].backPhoto.complianceStatus,\n  tags: documents.value.vehicles[i].backPhoto.tags,\n  isWithinModal: true,\n} }}\n",
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
  <View id="45896" viewKey="View 1">
    <Image
      id="vehicleBackImg"
      fit="contain"
      heightType="fixed"
      horizontalAlign="center"
      marginType="normal"
      src="{{ documents.value.vehicles[i].backPhoto.file.getUrl }}"
    >
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.vehicles[i].backPhoto.file.id],\n  docName: `Vehicle ${i + 1} - Back`,\n  fileUrl: documents.value.vehicles[i].backPhoto.file.getUrl,\n  currentStatus: documents.value.vehicles[i].backPhoto.complianceStatus,\n  tags: documents.value.vehicles[i].backPhoto.tags,\n  isWithinModal: true,\n} }}\n",
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
      id="alert20"
      description=""
      hidden="{{ profileStatus.value === 'REJECTED' }}"
      title="{{ documents.value.vehicles[i].backPhoto.complianceStatus }}"
      type="{{ documents.value.vehicles[i].backPhoto.complianceStatus === 'APPROVED' ? 'success' : 'warning' }}"
    />
    <SplitButton
      id="splitButton35"
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
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.vehicles[i].backPhoto.file.id],\n  docName: `Vehicle ${i + 1} - Back`,\n  fileUrl: documents.value.vehicles[i].backPhoto.file.getUrl,\n  complianceStatus: 'APPROVED',\n  currentStatus: documents.value.vehicles[i].backPhoto.complianceStatus,\n  isWithinModal: false,\n} }}",
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
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.vehicles[i].backPhoto.file.id],\n  docName: `Vehicle ${i + 1} - Back`,\n  fileUrl: documents.value.vehicles[i].backPhoto.file.getUrl,\n  complianceStatus: 'RESUBMIT',\n  currentStatus: documents.value.vehicles[i].backPhoto.complianceStatus,\n  tags: documents.value.vehicles[i].backPhoto.tags,\n  isWithinModal: true,\n} }}",
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
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.vehicles[i].backPhoto.file.id],\n  docName: `Vehicle ${i + 1} - Back`,\n  fileUrl: documents.value.vehicles[i].backPhoto.file.getUrl,\n  complianceStatus: 'NOTAPPLICABLE',\n  currentStatus: documents.value.vehicles[i].backPhoto.complianceStatus,\n  isWithinModal: false,\n} }}",
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
                  "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.vehicles[i].backPhoto.file.id],\n  docName: `Vehicle ${i + 1} - Back`,\n  fileUrl: documents.value.vehicles[i].backPhoto.file.getUrl,\n  complianceStatus: 'PENDING',  \n  currentStatus: documents.value.vehicles[i].backPhoto.complianceStatus,\n  isWithinModal: false,\n} }}",
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
</Container>
