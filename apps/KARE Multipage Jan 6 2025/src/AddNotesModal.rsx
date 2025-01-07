<ModalFrame
  id="AddNotesModal"
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
      id="modalTitle2"
      value="### Comments and Notes"
      verticalAlign="center"
    />
    <Button
      id="modalCloseButton3"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="AddNotesModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="noteForm"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Body>
        <Select
          id="noteType"
          emptyMessage="No options"
          itemMode="static"
          label="Type"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
        >
          <Option id="fd082" label="Notes" value="notes" />
          <Option id="2d6d9" label="Comments" value="comments" />
          <Option id="7eae9" label="Next Steps" value="next_steps" />
        </Select>
        <NumberInput
          id="projectID"
          currency="USD"
          disabled="true"
          inputValue={0}
          label="projectID"
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          showStepper={true}
          value="{{selected.value.id}}"
        />
        <TextArea
          id="textAreaNotes"
          autoResize={true}
          label="Text"
          labelPosition="top"
          minLines={2}
          placeholder="Enter value"
          required={true}
        />
      </Body>
      <Footer>
        <Button
          id="formButton4"
          style={{ ordered: [{ background: "rgb(61, 23, 23)" }] }}
          submit={true}
          submitTargetId="noteForm"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addnewNote"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="hide"
        params={{ ordered: [] }}
        pluginId="AddNotesModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateacknowledgeNotes"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
