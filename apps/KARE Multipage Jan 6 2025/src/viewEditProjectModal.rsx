<ModalFrame
  id="viewEditProjectModal"
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
  style={{
    ordered: [
      { headerBackground: "rgb(11, 22, 42)" },
      { borderRadius: "40px" },
    ],
  }}
>
  <Header>
    <Text
      id="modalTitle1"
      value="### {{selected?.value.project_name}} - {{selected.value.customer_name}}"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton2"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="viewEditProjectModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Include src="./tabbedContainer1.rsx" />
  </Body>
  <Footer>
    <Button
      id="button2"
      style={{ ordered: [{ background: "rgb(61, 23, 23)" }] }}
      text="Comments and Notes"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="AddNotesModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button3"
      hidden="{{ UAvariable.value === false }}"
      style={{ ordered: [{ background: "danger" }] }}
      text="Delete"
    >
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
