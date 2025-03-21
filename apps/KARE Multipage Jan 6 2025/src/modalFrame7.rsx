<ModalFrame
  id="modalFrame7"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden="{{ Gatherdata.isFetching == false }}"
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="modalTitle10"
      value="### Container title"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton12"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame7"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <ProgressBar id="progressBar1" indeterminate={true} label="" value={60} />
  </Body>
</ModalFrame>
