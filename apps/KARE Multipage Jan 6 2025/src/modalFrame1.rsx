<ModalFrame
  id="modalFrame1"
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
      id="youSure"
      value="### Are you Sure you Want to Delete {{ selected.value.project_name }}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton6"
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
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <ButtonGroup2 id="buttonGroup1" overflowPosition={2}>
      <ButtonGroup2-Button id="30b6c" styleVariant="solid" text="No">
        <Event
          event="click"
          method="hide"
          params={{ ordered: [] }}
          pluginId="modalFrame1"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button id="67b88" styleVariant="danger" text="Delete">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="deleteproj"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
  </Body>
</ModalFrame>
