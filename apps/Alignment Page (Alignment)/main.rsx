<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="serviceProviderId"
    defaultValue="b3b82043-3b47-453f-a0b8-17c7785f2df9"
  />
  <Include src="./src/addExclusionModal.rsx" />
  <Include src="./src/modalFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
    >
      <Include src="./src/exclusionsMainContainer.rsx" />
      <Container
        id="siteExclusionGroup"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0px"
        padding="0px"
        showBody={true}
        showBorder={false}
        style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
      >
        <View id="20104" viewKey="View 1">
          <Select
            id="brandSiteSelect"
            data="{{ constructOptions.data }}"
            emptyMessage="No options"
            hidden="{{ !exclusionSelect.selectedItem || exclusionSelect.selectedItem.value !== 'site'}}"
            label="Select Brand"
            labelPosition="top"
            labels="{{ item.name }}"
            overlayMaxHeight={375}
            placeholder="Select an option"
            showSelectionIndicator={true}
            values="{{ item.id }}"
          >
            <Event
              event="change"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="isSaveDisabled"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="change"
              method="clearValue"
              params={{ ordered: [] }}
              pluginId="exclusionMultiselect2"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <Multiselect
            id="exclusionMultiselect2"
            data="{{ constructSiteOptions.data }}"
            emptyMessage="No options"
            hidden="{{ exclusionSelect.selectedItem?.value !== 'site' || exclusionSelect === null  }}"
            label="Select Site"
            labelPosition="top"
            labels="{{ item.name }}"
            overlayMaxHeight={375}
            placeholder="Select options"
            showClear={true}
            showSelectionIndicator={true}
            values="{{ item.id }}"
            wrapTags={true}
          >
            <Event
              event="focus"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="constructSiteOptions"
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
        </View>
      </Container>
    </ModuleContainerWidget>
  </Frame>
</App>
