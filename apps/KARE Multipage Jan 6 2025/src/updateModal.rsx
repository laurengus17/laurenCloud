<ModalFrame
  id="updateModal"
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
  style={{ ordered: [{ headerBackground: "rgb(61, 23, 23)" }] }}
>
  <Header>
    <Text
      id="modalTitle4"
      value="### {{table6.selectedRow.field}}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton5"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="updateModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="text21"
      value="## Old Value: {{table6.selectedRow.old}}"
      verticalAlign="center"
    />
    <Text
      id="text22"
      value="## New Value: {{table6.selectedRow.new}}"
      verticalAlign="center"
    />
    <Text
      id="text23"
      horizontalAlign="center"
      value="## Date: {{table6.selectedRow.date}}"
      verticalAlign="center"
    />
  </Body>
</ModalFrame>
