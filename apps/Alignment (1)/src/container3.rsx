<Container
  id="container3"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle141"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="0b9b8" viewKey="View 1">
    <Text id="text105" value="**Rates**" verticalAlign="center" />
    <Button
      id="button3"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Go To Tab"
    >
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: '"rates"' }] }}
        pluginId="steps1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Container
      id="container11"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <Header>
        <Text
          id="containerTitle149"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="ccd0b" viewKey="View 1">
        <KeyValue
          id="keyValue4"
          data="{{ratesData.value}}"
          editIcon="bold/interface-edit-pencil"
          enableSaveActions={true}
          groupLayout="singleColumn"
          itemLabelPosition="top"
          labelWrap={true}
        >
          <Property
            id="Cladding"
            editable="false"
            editableOptions={{}}
            format="html"
            formatOptions={{}}
            hidden="false"
            label="Cladding"
          />
          <Property
            id="Awning"
            editable="false"
            editableOptions={{}}
            format="html"
            formatOptions={{}}
            hidden="false"
            label="Awning"
          />
          <Property
            id="Air Compressor"
            editable="false"
            editableOptions={{}}
            format="html"
            formatOptions={{}}
            hidden="false"
            label="Air compressor"
          />
        </KeyValue>
        <Link
          id="link4"
          hidden="{{getAlignmentSummary.data.alignmentRates.rates.length === 0}}"
          text="{{ratesAdvancedInformationToggle.value ? 'Hide Details' : 'View Details'}}"
        >
          <Event
            event="click"
            method="setValue"
            params={{
              ordered: [{ value: "{{!ratesAdvancedInformationToggle.value}}" }],
            }}
            pluginId="ratesAdvancedInformationToggle"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
    <Container
      id="ratesWarningContainer"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ratesStatusIndicatorTransformer.value}}"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgb(255, 235, 231)" }] }}
    >
      <Header>
        <Text
          id="containerTitle152"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="7086c" viewKey="View 1">
        <Status id="status2" itemMode="static" margin="0" value="UneditedRate">
          <Option
            id="a1b6c"
            color="{{ theme.danger }}"
            icon="bold/interface-alert-warning-circle"
            label="Unedited Rate"
            value="UneditedRate"
          />
        </Status>
      </View>
    </Container>
  </View>
</Container>
