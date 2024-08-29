<ModalFrame
  id="pdfFrame"
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
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      hidden=""
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="pdfFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <PDFViewer
      id="pdf1"
      showTopBar={true}
      src="https://upload.wikimedia.org/wikipedia/commons/1/14/Marspathfinder.pdf"
    />
  </Body>
</ModalFrame>
