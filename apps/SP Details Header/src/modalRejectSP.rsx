<ModalFrame
  id="modalRejectSP"
  footerPadding="8px 12px"
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
>
  <Header>
    <Text
      id="modalTitle1"
      margin="4px 8px 0px 8px"
      value="### Reject this Applicant?"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton1"
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
        pluginId="modalRejectSP"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="text88"
      margin="0px 8px"
      value="This action cannot be undone."
      verticalAlign="center"
    />
  </Header>
  <Body>
    <TextArea
      id="textAreaReasonRejection"
      autoResize={true}
      label="Reason for rejection"
      labelPosition="top"
      minLines={2}
      placeholder="Enter"
      required={true}
    />
  </Body>
  <Footer>
    <Button
      id="button6"
      style={{ ordered: [{ background: "canvas" }] }}
      text="Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalRejectSP"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="button7"
      disabled="{{ !textAreaReasonRejection.value }}"
      style={{ ordered: [{ background: "danger" }] }}
      text="Submit Rejection"
    >
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="updateStatusToRejected"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{
          ordered: [
            {
              options: {
                object: {
                  onSuccess: null,
                  onFailure: null,
                  additionalScope: null,
                },
              },
            },
          ],
        }}
        pluginId="sendRejectionReview"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="modalRejectSP"
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
