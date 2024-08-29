<Container
  id="steppedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  marginType="none"
  padding="12px"
  showBody={true}
  showFooter={true}
  showHeader={true}
>
  <Header>
    <Steps
      id="steps1"
      horizontalAlign="center"
      indicateCompletedSteps={true}
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      showStepNumbers={true}
      targetContainerId="steppedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="0007a" value="Step 1" />
      <Option id="fc869" value="Step 2" />
      <Option id="a414a" value="Step 3" />
    </Steps>
  </Header>
  <View
    id="c78b7"
    label="{{ applicantInformation.value.spKey === 'independent_technician' ? 'Applicant Information' : 'Owner Information' }}"
    viewKey="applicantInformation"
  >
    <Module
      id="applicantInformationAlignment1"
      name="Applicant Information (Alignment)"
      pageUuid="5557b1de-a95d-4654-bfc7-6a76ae18767d"
      serviceProviderID="{{ urlparams.userId }}"
    />
  </View>
  <View
    id="c8eba"
    disabled={false}
    hidden="{{ applicantInformation.value.spKey === 'independent_technician' }}"
    iconPosition="left"
    label="Business Information"
    viewKey="Business Information"
  >
    <Module
      id="businessInformationAlignment1"
      name="Business Information (Alignment)"
      pageUuid="666708ac-1c2f-45e7-b8db-ebc2b3ce36e0"
      serviceProviderId="{{ urlparams.userId }}"
    />
  </View>
  <View id="dc35f" label="Trades" viewKey="trades">
    <Module
      id="trades1"
      name="Trades"
      pageUuid="696ffbc6-5e52-4048-8f2c-5a890e839170"
      serviceProviderID="{{ urlparams.userId }}"
    />
  </View>
  <View id="c1c61" label="Rates" viewKey="rates">
    <Module
      id="rates1"
      name="Rates"
      pageUuid="df848bcf-e762-4a12-93c6-b6e58d2012f2"
      serviceProviderID="{{ urlparams.userId }}"
    />
  </View>
  <View
    id="b997b"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Coverage"
    viewKey="coverage"
  >
    <Module
      id="coverageModule"
      name="Coverage"
      pageUuid="ab7a4805-e1c8-4b27-9f4b-57953e2bfe2b"
      serviceProviderID="{{ urlparams.userId }}"
    />
  </View>
  <View
    id="487ec"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Vehicles and Uniforms"
    viewKey="vehiclesAndUniforms"
  >
    <Module
      id="vehiclesAndUniforms1"
      name="Vehicles And Uniforms"
      pageUuid="519c35fc-8738-4809-85aa-9abf2b282456"
      serviceProviderId="{{urlparams.userId}}"
      serviceProviderID=""
    />
  </View>
  <View
    id="17c16"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Alignment"
    viewKey="alignment"
  >
    <Module
      id="alignmentPage1"
      getSummaryTrigger="getSummaryTriggerFunction"
      name="Alignment Page"
      pageUuid="a9a81dae-74be-45d6-bb55-0a5899301cef"
      serviceProviderId="{{urlparams.userId}}"
      serviceProviderID="{{ urlparams.userId }}"
    />
  </View>
  <View
    id="b0170"
    disabled={false}
    hidden={false}
    iconPosition="left"
    label="Summary"
    viewKey="summary"
  >
    <Text id="containerTitle140" value="#### Summary" verticalAlign="center" />
    <Container
      id="container1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle139"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="0b9b8" viewKey="View 1">
        <Text
          id="text102"
          value="**Applicant Information**"
          verticalAlign="center"
        />
        <Button
          id="button1"
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Go To Tab"
        >
          <Event
            event="click"
            method="setValue"
            params={{ ordered: [{ value: '"applicantInformation"' }] }}
            pluginId="steps1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Container
          id="container8"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showBorder={false}
        >
          <Header>
            <Text
              id="containerTitle146"
              value="#### Container title"
              verticalAlign="center"
            />
          </Header>
          <View id="f1bb5" viewKey="View 1">
            <KeyValue
              id="applicantInfoKeyValue3"
              data="{{applicantInformationData.value}}"
              enableSaveActions={true}
              groupLayout="singleColumn"
              hidden=""
              itemLabelPosition="top"
              labelWrap={true}
            >
              <Property
                id="Full Name"
                editable="false"
                editableOptions={{}}
                format="string"
                formatOptions={{}}
                hidden="false"
                label="Full name"
              />
              <Property
                id="Contact Numbers"
                editable="false"
                editableOptions={{}}
                format="tags"
                formatOptions={{ automaticColors: false }}
                hidden="false"
                label="Contact numbers"
              />
              <Property
                id="Emails"
                editable="false"
                editableOptions={{}}
                format="tags"
                formatOptions={{ automaticColors: false }}
                hidden="false"
                label="Emails"
              />
              <Property
                id="SP Type"
                editable="false"
                editableOptions={{}}
                format="string"
                formatOptions={{}}
                hidden="false"
                label="SP Type"
              />
            </KeyValue>
            <Link
              id="link1"
              hidden=""
              text="{{applicantInformationAdvancedToggle.value ? 'Hide Details' : 'View Details'}}"
            >
              <Event
                event="click"
                method="setValue"
                params={{
                  ordered: [
                    { value: "{{!applicantInformationAdvancedToggle.value}}" },
                  ],
                }}
                pluginId="applicantInformationAdvancedToggle"
                type="state"
                waitMs="0"
                waitType="debounce"
              />
            </Link>
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="container2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <View id="0b9b8" viewKey="View 1">
        <Text id="text101" value="**Trades**" verticalAlign="center" />
        <Button
          id="button2"
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Go To Tab"
        >
          <Event
            event="click"
            method="setValue"
            params={{ ordered: [{ value: '"trades"' }] }}
            pluginId="steps1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Container
          id="container10"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showBorder={false}
        >
          <Header>
            <Text
              id="containerTitle148"
              value="#### Container title"
              verticalAlign="center"
            />
          </Header>
          <View id="a09a2" viewKey="View 1">
            <KeyValue
              id="keyValue1"
              data="{{tradesData.value}}"
              editIcon="bold/interface-edit-pencil"
              enableSaveActions={true}
              groupLayout="singleColumn"
              itemLabelPosition="top"
              labelWrap={true}
            >
              <Property
                id="Electrician"
                editable="false"
                editableOptions={{}}
                format="tags"
                formatOptions={{ automaticColors: false }}
                hidden="false"
                label="Electrician"
              />
              <Property
                id="Plumber"
                editable="false"
                editableOptions={{}}
                format="tags"
                formatOptions={{ automaticColors: false }}
                hidden="false"
                label="Plumber"
              />
            </KeyValue>
            <Link
              id="link2"
              hidden="{{getAlignmentSummary.data.tradesAndEquipment.trades.length === 0}}"
              text="{{tradesAdvancedInformationToggle.value ? 'Hide Details' : 'View Details'}}"
            >
              <Event
                event="click"
                method="setValue"
                params={{
                  ordered: [
                    { value: "{{!tradesAdvancedInformationToggle.value}}" },
                  ],
                }}
                pluginId="tradesAdvancedInformationToggle"
                type="state"
                waitMs="0"
                waitType="debounce"
              />
            </Link>
          </View>
        </Container>
        <Container
          id="container14"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          hidden="{{!tradesStatusIndicator.value}}"
          padding="12px"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgb(255, 235, 231)" }] }}
        >
          <Header>
            <Text
              id="containerTitle151"
              value="#### Container title"
              verticalAlign="center"
            />
          </Header>
          <View id="7086c" viewKey="View 1">
            <Status
              id="status1"
              hidden="{{!tradesStatusIndicator.value}}"
              itemMode="static"
              margin="0"
              value="PENDING"
            >
              <Option
                id="ff701"
                color="{{ theme.danger }}"
                icon="bold/interface-delete-circle"
                label="Unapproved Trade/Subtrade"
                value="PENDING"
              />
            </Status>
          </View>
        </Container>
      </View>
    </Container>
    <Include src="./container3.rsx" />
    <Container
      id="container4"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle142"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="0b9b8" viewKey="View 1">
        <Text id="text103" value="**Coverage**" verticalAlign="center" />
        <Button
          id="button4"
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Go To Tab"
        >
          <Event
            event="click"
            method="setValue"
            params={{ ordered: [{ value: '"coverage"' }] }}
            pluginId="steps1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Container
          id="container7"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showBorder={false}
        >
          <Header>
            <Text
              id="containerTitle145"
              value="#### Container title"
              verticalAlign="center"
            />
          </Header>
          <View id="f1bb5" viewKey="View 1">
            <KeyValue
              id="keyValue2"
              data="{{coverageData.value}}"
              editIcon="bold/interface-edit-pencil"
              enableSaveActions={true}
              groupLayout="singleColumn"
              itemLabelPosition="top"
              labelWrap={true}
            />
          </View>
        </Container>
      </View>
    </Container>
    <Include src="./container5.rsx" />
    <Container
      id="container6"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      loading="{{ getAlignmentSummary.isFetching }}"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle144"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="0b9b8" viewKey="View 1">
        <Text id="text104" value="**Alignment**" verticalAlign="center" />
        <Button
          id="button6"
          style={{ ordered: [] }}
          styleVariant="outline"
          text="Go To Tab"
        >
          <Event
            event="click"
            method="setValue"
            params={{ ordered: [{ value: '"alignment"' }] }}
            pluginId="steps1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Container
          id="container9"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          padding="12px"
          showBody={true}
          showBorder={false}
        >
          <Header>
            <Text
              id="containerTitle147"
              value="#### Container title"
              verticalAlign="center"
            />
          </Header>
          <View id="f1bb5" viewKey="View 1">
            <KeyValue
              id="keyValue3"
              data="{{alignmentData.value}}"
              editIcon="bold/interface-edit-pencil"
              enableSaveActions={true}
              groupLayout="singleColumn"
              itemLabelPosition="top"
              labelWrap={true}
            >
              <Property
                id="Entities"
                editable="false"
                editableOptions={{}}
                format="string"
                formatOptions={{}}
                hidden="false"
                label="Entities"
              />
              <Property
                id="Clients"
                editable="false"
                editableOptions={{}}
                format="string"
                formatOptions={{}}
                hidden="false"
                label="Clients"
              />
              <Property
                id="Brands"
                editable="false"
                editableOptions={{}}
                format="string"
                formatOptions={{}}
                hidden="false"
                label="Brands"
              />
              <Property
                id="Sites"
                editable="false"
                editableOptions={{}}
                format="tags"
                formatOptions={{ automaticColors: false }}
                hidden="false"
                label="Sites"
              />
              <Property
                id="Work Orders"
                editable="false"
                editableOptions={{}}
                format="multilineString"
                formatOptions={{}}
                hidden="false"
                label="Work orders"
              />
            </KeyValue>
            <Link
              id="link3"
              hidden="{{alignmentLinkVisible.value}}"
              text="{{alignmentAdvancedInformationToggle.value ? 'Hide Details' : 'View Details'}}"
            >
              <Event
                event="click"
                method="setValue"
                params={{
                  ordered: [
                    { value: "{{!alignmentAdvancedInformationToggle.value}}" },
                  ],
                }}
                pluginId="alignmentAdvancedInformationToggle"
                type="state"
                waitMs="0"
                waitType="debounce"
              />
            </Link>
          </View>
        </Container>
      </View>
    </Container>
  </View>
  <Footer>
    <Button
      id="prevButton1"
      disabled="{{ steppedContainer1.currentViewIndex === 0 }}"
      iconBefore="bold/interface-arrows-left-alternate"
      marginType="normal"
      styleVariant="outline"
      text="Previous"
    >
      <Event
        enabled=""
        event="click"
        method="showPreviousVisibleView"
        params={{ ordered: [{ wrap: false }] }}
        pluginId="steppedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="nextButton1"
      disabled="{{ steppedContainer1.currentViewIndex + 1 === steppedContainer1.viewKeys.length }}"
      heightType="auto"
      hidden="{{ steppedContainer1.currentViewIndex + 1 === steppedContainer1.viewKeys.length }}"
      iconAfter="bold/interface-arrows-right-alternate"
      marginType="normal"
      text="Next"
    >
      <Event
        enabled="{{!shouldShowUnsavedModal.value}}"
        event="click"
        method="showNextVisibleView"
        params={{ ordered: [{ wrap: false }] }}
        pluginId="steppedContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{shouldShowUnsavedModal.value}}"
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="continueWithoutSavingModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="getAlignmentSummary"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Button
      id="submitButton"
      hidden="{{ steppedContainer1.currentViewIndex + 1 !== steppedContainer1.viewKeys.length }}"
      text="Submit"
    >
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: "true" }] }}
        pluginId="isSPCompliant"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
</Container>
