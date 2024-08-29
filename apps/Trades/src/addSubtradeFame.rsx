<ModalFrame
  id="addSubtradeFame"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text id="modalTitle2" value="### Add Subtrades" verticalAlign="center" />
    <Button
      id="modalCloseButton3"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="addSubtradeFame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "{{null}}" }] }}
        pluginId="licenseFileName"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "{{null}}" }] }}
        pluginId="certificateFileName"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="subtradeSelect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="fileDropzone1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="fileDropzone2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="subtradeNotes"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Select
      id="subtradeSelect"
      data="{{getSubtrades.data.filter((it) => !subtradeIdsOfTrade.value.includes(it.id))}}"
      emptyMessage="No options"
      label="Subtrade Name"
      labelPosition="top"
      labels="{{item.name}}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      values="{{item.id}}"
    />
    <Text id="text2" value="**Certificate**" verticalAlign="center" />
    <FileDropzone
      id="fileDropzone1"
      _isUpgraded={true}
      appendNewSelection={true}
      iconBefore="bold/programming-browser-search"
      label=""
      labelPosition="top"
      placeholder="Select or drag and drop"
      selectionType="multiple"
    >
      <Event
        event="change"
        method="setValue"
        params={{ ordered: [{ value: "{{self?.value[0]?.name}}" }] }}
        pluginId="certificateFileName"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </FileDropzone>
    <Text id="text3" value="**License**" verticalAlign="center" />
    <FileDropzone
      id="fileDropzone2"
      _isUpgraded={true}
      appendNewSelection={true}
      iconBefore="bold/programming-browser-search"
      label=""
      labelPosition="top"
      placeholder="Select or drag and drop"
      selectionType="multiple"
    >
      <Event
        event="change"
        method="setValue"
        params={{ ordered: [{ value: "{{self?.value[0]?.name}}" }] }}
        pluginId="licenseFileName"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </FileDropzone>
    <TextArea
      id="subtradeNotes"
      autoResize={true}
      label="Notes"
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
    />
  </Body>
  <Footer>
    <Button
      id="button4"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="addSubtradeFame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "{{null}}" }] }}
        pluginId="licenseFileName"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "{{null}}" }] }}
        pluginId="certificateFileName"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="fileDropzone1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="fileDropzone2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="subtradeSelect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "{{null}}" }] }}
        pluginId="subtradeNotes"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button5"
      disabled="{{postFileUploadCertificate.isFetching || postFileUploadLicense.isFetching || getSubtrades.isFetching || putCertificateQuery.isFetching || putLicenseQuery.isFetching || !subtradeSelect.value}}"
      loading="{{putAddSubtrades.isFetching}}"
      text="Add Subtrade"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="putAddSubtrades"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
