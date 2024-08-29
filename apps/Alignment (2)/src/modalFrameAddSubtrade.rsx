<ModalFrame
  id="modalFrameAddSubtrade"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitle2"
      marginType="normal"
      value="### Add Subtrade"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton3"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      marginType="normal"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrameAddSubtrade"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
</ModalFrame>
