<ModalFrame
  id="modalFrame5"
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
    <Text
      id="modalTitle5"
      value="### Customer Might Already Exist!"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton11"
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
        pluginId="modalFrame5"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Table
      id="table10"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ companyNameTaken.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="f95b2"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="7a580"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="Name"
        label="Name"
        placeholder="Enter value"
        position="center"
        size={209.484375}
        summaryAggregationMode="none"
      />
      <Column
        id="9894a"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="sls_id"
        label="Sls ID"
        placeholder="Select option"
        position="center"
        size={50.3125}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f95b2"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
    </Table>
  </Body>
  <Footer>
    <ButtonGroup2
      id="buttonGroup2"
      alignment="center"
      heightType="auto"
      overflowPosition={2}
    >
      <ButtonGroup2-Button
        id="22536"
        hidden="{{ csr.value == null }}"
        styleVariant="solid"
        text="Customer is not in list"
      >
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="addRow"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="hide"
          params={{ ordered: [] }}
          pluginId="modalFrame5"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button id="fef19" styleVariant="danger" text="Cancel">
        <Event
          event="click"
          method="hide"
          params={{ ordered: [] }}
          pluginId="modalFrame5"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="clear"
          params={{ ordered: [] }}
          pluginId="form1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="hide"
          params={{ ordered: [] }}
          pluginId="modalFrame6"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
  </Footer>
</ModalFrame>
