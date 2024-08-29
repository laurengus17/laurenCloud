<ModalFrame
  id="resubmissionModal"
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
>
  <Header>
    <Text
      id="modalTitle2"
      value="### Reason for resubmission"
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
        pluginId="resubmissionModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <CheckboxGroup
      id="resubmissionOptionsCheckboxGroup"
      data="{{ reasonsForResubmission.value }}"
      label=""
      labelPosition="top"
      labels="{{ item.value }}"
      value="{{ fileToUpdate.value.resubmissionReasons }}"
      values="{{ item.id }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ { ...fileToUpdate.value, resubmissionReasons: resubmissionOptionsCheckboxGroup.value } }}",
            },
          ],
        }}
        pluginId="fileToUpdate"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </CheckboxGroup>
    <TextArea
      id="otherResubmissionReasonInput"
      autoResize={true}
      disabled=""
      hidden="{{ !fileToUpdate.value.resubmissionReasons.includes(reasonsForResubmission.value.find((reason) => reason.value === 'Other Reason').id) }}"
      label=""
      labelPosition="top"
      minLines={2}
      placeholder="Enter value"
      value="{{ fileToUpdate.value.updateMessage }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {...fileToUpdate.value, updateMessage: otherResubmissionReasonInput.value} }}",
            },
          ],
        }}
        pluginId="fileToUpdate"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </TextArea>
  </Body>
  <Footer>
    <ButtonGroup2
      id="resubmissionModalButtonGroup"
      alignment="right"
      overflowPosition={2}
    >
      <ButtonGroup2-Button id="8ac98" styleVariant="outline" text="Cancel">
        <Event
          event="click"
          method="hide"
          params={{ ordered: [] }}
          pluginId="resubmissionModal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="docReviewModal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ {...fileToUpdate.value, resubmissionReasons: [], updateMessage: '' } }}",
              },
            ],
          }}
          pluginId="fileToUpdate"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button id="c1e6e" styleVariant="solid" text="Submit">
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updateDocComplianceStatus"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled=""
          event="click"
          method="hide"
          params={{ ordered: [] }}
          pluginId="resubmissionModal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled=""
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="docReviewModal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          enabled="false"
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ {...fileToUpdate.value, resubmissionReasons: [], updateMessage: '' } }}",
              },
            ],
          }}
          pluginId="fileToUpdate"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
  </Footer>
</ModalFrame>
