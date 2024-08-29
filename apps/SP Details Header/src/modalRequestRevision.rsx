<ModalFrame
  id="modalRequestRevision"
  footerPadding="0px 12px 8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showFooterBorder={false}
  showHeader={true}
  showHeaderBorder={false}
  showOverlay={true}
  size="medium"
  style={{ ordered: [{ borderRadius: "16px" }] }}
  styleContext={{ ordered: [] }}
>
  <Header>
    <Text
      id="modalTitle2"
      margin="4px 8px 0px 8px"
      value="### Request Revision"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton2"
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
        pluginId="modalRequestRevision"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text87"
      margin="0px 8px"
      value="The Service Provider will be asked to resubmit the following:"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <ListViewBeta
      id="listResubmits"
      _primaryKeys="{{ i }}"
      data="{{ getSPPendingDocsResubmit.data }}"
      heightType="auto"
      itemWidth="200px"
      margin="0"
      numColumns={3}
      padding="0"
    >
      <Container
        id="resubmitItem"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        padding="0"
        showBody={true}
        showBorder={false}
      >
        <Header>
          <Text
            id="containerTitle1"
            value="#### {{ item }}"
            verticalAlign="center"
          />
        </Header>
        <View id="d57b3" viewKey="View 1">
          <Text
            id="text86"
            value="**{{ getSPPendingDocsResubmit.data[i].fileDescription }}**"
            verticalAlign="center"
          />
          <ListViewBeta
            id="listResubmitReasons"
            _primaryKeys="{{ i }}"
            data="{{ listResubmits.item.reasons }}"
            heightType="auto"
            itemWidth="200px"
            margin="0"
            maxHeight="100vh"
            numColumns={3}
            padding="0"
          >
            <Container
              id="reasonItem"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              margin="0"
              padding="0"
              showBody={true}
              showBorder={false}
            >
              <Header>
                <Text
                  id="containerTitle2"
                  value="#### {{ item }}"
                  verticalAlign="center"
                />
              </Header>
              <View id="d57b3" viewKey="View 1">
                <Text
                  id="text85"
                  value="• {{ listResubmits.item.reasons[i].value }}"
                  verticalAlign="center"
                />
              </View>
            </Container>
          </ListViewBeta>
        </View>
      </Container>
    </ListViewBeta>
  </Body>
  <Footer>
    <Button
      id="button8"
      style={{ ordered: [{ background: "canvas" }] }}
      text="Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalRequestRevision"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button9"
      disabled="{{ !getSPPendingDocsResubmit.data.length }}"
      text="Send Request"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateStatusToRevision"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="sendResubmitEmail"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalRequestRevision"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSpDetails"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</ModalFrame>
