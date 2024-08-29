<ModalFrame
  id="addExclusionModal"
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
    <Text
      id="addExclusionHeader"
      value="### Add Exclusion"
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
        pluginId="addExclusionModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Select
      id="exclusionSelect"
      emptyMessage="No options"
      itemMode="static"
      label="Exclude SP by"
      labelPosition="top"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option id="c6a05" label="Entity" value="entity" />
      <Option id="cf764" label="Client" value="client" />
      <Option id="2a3b7" label="Brand" value="brand" />
      <Option
        id="60a3a"
        disabled={false}
        hidden={false}
        label="Work Order Type"
        value="workOrderType"
      />
      <Option
        id="a0d69"
        disabled={false}
        hidden={false}
        label="Priority"
        value="priority"
      />
      <Option
        id="78e1e"
        disabled={false}
        hidden={false}
        label="Site"
        value="site"
      />
      <Option
        id="52413"
        disabled={false}
        hidden={false}
        label="State"
        value="state"
      />
      <Event
        event="change"
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
        pluginId="constructOptions"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="isSaveDisabled"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Multiselect
      id="exclusionMultiselect1"
      data="{{ constructOptions.data }}"
      emptyMessage="No options"
      hidden="{{ !exclusionSelect.selectedItem || exclusionSelect.value === 'site' }}"
      label="Select {{ exclusionSelect.value === 
  'site' ? 'Brand' : exclusionSelect.selectedLabel }}"
      labelPosition="top"
      labels="{{ item.name }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select options"
      showSelectionIndicator={true}
      values="{{ item.id }}"
      wrapTags={true}
    >
      <Event
        event="focus"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="constructOptions"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="isSaveDisabled"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Multiselect>
    <Button
      id="exclusionCancelBtn2"
      marginType="normal"
      styleVariant="outline"
      text="Cancel"
    >
      <Event
        event="click"
        method="hide"
        params={{ ordered: [] }}
        pluginId="addExclusionModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="exclusionSelect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="exclusionMultiselect1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="exclusionMultiselect2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="clearValue"
        params={{ ordered: [] }}
        pluginId="brandSiteSelect"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="isSaveDisabled"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="exclusionSaveBtn2"
      disabled="{{isSaveDisabled.data}}"
      loading=""
      marginType="normal"
      text="Save"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="saveExclusionPayload"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="postExclusion"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="isSaveDisabled"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="siteTableContent"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getSummaryTrigger"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Body>
</ModalFrame>
