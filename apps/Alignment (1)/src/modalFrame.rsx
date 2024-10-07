<ModalFrame
  id="modalFrame"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showOverlay={true}
  size="large"
>
  <Header>
    <ButtonGroup2 id="buttonGroup1" alignment="center" overflowPosition={2}>
      <ButtonGroup2-Button
        id="3a3cd"
        icon="bold/interface-arrows-left"
        iconPosition="replace"
        styleVariant="transparent"
        text="Back"
      >
        <Event
          event="click"
          method="showPreviousView"
          params={{ ordered: [] }}
          pluginId="modalContainerDriversLicense"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button
        id="48cbd"
        icon="bold/interface-arrows-right"
        iconPosition="replace"
        styleVariant="transparent"
        text="Next"
      >
        <Event
          event="click"
          method="showNextView"
          params={{ ordered: [] }}
          pluginId="modalContainerDriversLicense"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
    <Button
      id="modalExpandButton"
      ariaLabel="Expand"
      horizontalAlign="right"
      iconBefore="bold/interface-arrows-expand-3"
      marginType="normal"
      style={{ ordered: [{ border: "rgba(207, 207, 207, 0)" }] }}
      styleVariant="outline"
      submitTargetId=""
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
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
        pluginId="modalFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Include src="./modalContainerDriversLicense.rsx" />
  </Body>
</ModalFrame>
