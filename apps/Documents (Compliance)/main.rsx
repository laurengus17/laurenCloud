<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp id="profileStatus" />
  <GlobalWidgetProp
    id="serviceProviderId"
    defaultValue="6e3a681c-7bf5-467a-9dd7-5762cabe37b5"
  />
  <Include src="./src/docReviewModal.rsx" />
  <Include src="./src/resubmissionModal.rsx" />
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
      <Include src="./src/DriversLicense_Photos.rsx" />
      <Container
        id="license_container"
        disabled="{{ profileStatus.value === 'REJECTED' }}"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0 0 24px 0"
        marginType="normal"
        padding="12px"
        showBody={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="collapsibleTitle2"
            marginType="normal"
            value="#### Trade Licenses"
            verticalAlign="center"
          />
          <Alert
            id="alert6"
            description=""
            hidden="{{ profileStatus.value === 'REJECTED' }}"
            title="{{ validationsCounter.value.tradeLicenses }} Records Pending Validation"
            type="{{validationsCounter.value.tradeLicenses > 0 ? 'warning' : 'success'}}"
          />
          <ToggleButton
            id="collapsibleToggle2"
            horizontalAlign="right"
            iconForFalse="bold/interface-arrows-button-down"
            iconForTrue="bold/interface-arrows-button-up"
            iconPosition="replace"
            marginType="normal"
            styleVariant="outline"
            text="{{ self.value ? 'Hide' : 'Show' }}"
            value="{{ license_container.showBody }}"
          >
            <Event
              event="change"
              method="setShowBody"
              params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
              pluginId="license_container"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToggleButton>
        </Header>
        <View id="53784" viewKey="View 1">
          <ListViewBeta
            id="license_list8"
            _primaryKeys=""
            computeAllInstanceValues={false}
            data="{{ documents.value.tradeLicenses}}"
            heightType="auto"
            itemWidth="200px"
            margin="0"
            marginType="normal"
            maxHeight="1000vh"
            numColumns={3}
            padding="0"
          >
            <Include src="./src/document_container13.rsx" />
          </ListViewBeta>
        </View>
      </Container>
      <Container
        id="collapsibleContainer3"
        disabled="{{ profileStatus.value === 'REJECTED' }}"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0 0 24px 0"
        marginType="normal"
        padding="12px"
        showBody={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="collapsibleTitle7"
            marginType="normal"
            value="#### Certifications"
            verticalAlign="center"
          />
          <Alert
            id="alert5"
            description=""
            hidden="{{ profileStatus.value === 'REJECTED' }}"
            title="{{ validationsCounter.value.tradeCertifications }} Records Pending Validation"
            type="{{validationsCounter.value.tradeCertifications > 0 ? 'warning' : 'success'}}"
          />
          <ToggleButton
            id="collapsibleToggle7"
            horizontalAlign="right"
            iconForFalse="bold/interface-arrows-button-down"
            iconForTrue="bold/interface-arrows-button-up"
            iconPosition="replace"
            marginType="normal"
            styleVariant="outline"
            text="{{ self.value ? 'Hide' : 'Show' }}"
            value="{{ collapsibleContainer3.showBody }}"
          >
            <Event
              event="change"
              method="setShowBody"
              params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
              pluginId="collapsibleContainer3"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToggleButton>
        </Header>
        <View id="0b337" viewKey="View 1">
          <ListViewBeta
            id="license_list9"
            computeAllInstanceValues={false}
            data="{{documents.value.tradeCertifications}}"
            heightType="auto"
            itemWidth="200px"
            margin="0"
            marginType="normal"
            maxHeight="1000vh"
            numColumns={3}
            padding="0"
          >
            <Include src="./src/certification_details2.rsx" />
          </ListViewBeta>
        </View>
      </Container>
      <Container
        id="COI_container"
        disabled="{{ profileStatus.value === 'REJECTED' }}"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0 0 24px 0"
        marginType="normal"
        padding="12px"
        showBody={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="collapsibleTitle4"
            marginType="normal"
            value="#### Certificate of Insurance (COI)"
            verticalAlign="center"
          />
          <Alert
            id="alert2"
            description=""
            hidden="{{ profileStatus.value === 'REJECTED' }}"
            title="{{validationsCounter.value.cois}} Record Pending Validation"
            type="{{validationsCounter.value.cois > 0 ? 'warning' : 'success'}}"
          />
          <ToggleButton
            id="collapsibleToggle4"
            horizontalAlign="right"
            iconForFalse="bold/interface-arrows-button-down"
            iconForTrue="bold/interface-arrows-button-up"
            iconPosition="replace"
            marginType="normal"
            styleVariant="outline"
            text="{{ self.value ? 'Hide' : 'Show' }}"
            value="{{ COI_container.showBody }}"
          >
            <Event
              event="change"
              method="setShowBody"
              params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
              pluginId="COI_container"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToggleButton>
        </Header>
        <View id="0b337" viewKey="View 1">
          <ListViewBeta
            id="listView18"
            computeAllInstanceValues={false}
            data="{{documents.value.cois}}"
            heightType="auto"
            itemWidth="200px"
            margin="0"
            marginType="normal"
            maxHeight="10000vh"
            numColumns={3}
            padding="0"
          >
            <Include src="./src/container81.rsx" />
          </ListViewBeta>
        </View>
      </Container>
      <Container
        id="collapsibleContainer2"
        disabled="{{ profileStatus.value === 'REJECTED' }}"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0 0 20px 0"
        marginType="normal"
        padding="12px"
        showBody={true}
        showHeader={true}
      >
        <Header>
          <Text
            id="collapsibleTitle6"
            marginType="normal"
            value="#### Vehicle Images"
            verticalAlign="center"
          />
          <Alert
            id="alert13"
            description=""
            hidden="{{ profileStatus.value === 'REJECTED' }}"
            title="{{ validationsCounter.value.vehicles }} Records Pending Validation"
            type="{{validationsCounter.value.vehicles > 0 ? 'warning' : 'success'}}"
          />
          <ToggleButton
            id="collapsibleToggle6"
            horizontalAlign="right"
            iconForFalse="bold/interface-arrows-button-down"
            iconForTrue="bold/interface-arrows-button-up"
            iconPosition="replace"
            marginType="normal"
            styleVariant="outline"
            text="{{ self.value ? 'Hide' : 'Show' }}"
            value="{{ collapsibleContainer2.showBody }}"
          >
            <Event
              event="change"
              method="setShowBody"
              params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
              pluginId="collapsibleContainer2"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToggleButton>
        </Header>
        <View id="0b337" viewKey="View 1">
          <ListViewBeta
            id="vehiclesList"
            computeAllInstanceValues={false}
            data="{{ documents.value.vehicles }}"
            heightType="auto"
            itemWidth="200px"
            margin="0"
            marginType="normal"
            maxHeight="1000vh"
            numColumns={3}
            padding="0"
          >
            <Include src="./src/vehicleContainer.rsx" />
          </ListViewBeta>
        </View>
      </Container>
    </ModuleContainerWidget>
  </Frame>
</App>
