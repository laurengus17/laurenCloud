<ModalFrame
  id="continueWithoutSavingModal"
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
      id="continueWithoutSavingCloseButton"
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
        pluginId="continueWithoutSavingModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="continueWithoutSavingTitle"
      horizontalAlign="center"
      value="### Continue without saving?"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <Text
      id="unsavedWorkText"
      horizontalAlign="center"
      value="You have not saved your changes, do you still want to continue?"
      verticalAlign="center"
    />
  </Body>
  <Footer>
    <Button
      id="modalCancelButton"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="continueWithoutSavingModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button id="continueWithoutSavingButton" text="Continue">
      <Event
        event="click"
        method="showNextVisibleView"
        params={{ ordered: [] }}
        pluginId="steppedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="continueWithoutSavingModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
