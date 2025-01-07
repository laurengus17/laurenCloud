<ModalFrame
  id="notesModal"
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
      id="modalTitle3"
      value="### Comments/Notes/Updates"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton4"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="notesModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Text
      id="text20"
      value="## {{table5.selectedSourceRow.text}}"
      verticalAlign="center"
    />
  </Body>
</ModalFrame>
