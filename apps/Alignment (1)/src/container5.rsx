<Container
  id="container5"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
>
  <Header>
    <Text
      id="containerTitle143"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="0b9b8" viewKey="View 1">
    <Text id="text106" value="**Vehicles & Uniforms**" verticalAlign="center" />
    <Button
      id="button5"
      style={{ ordered: [] }}
      styleVariant="outline"
      text="Go To Tab"
    >
      <Event
        event="click"
        method="setValue"
        params={{ ordered: [{ value: '"vehiclesAndUniforms"' }] }}
        pluginId="steps1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Container
      id="container12"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <View id="f1bb5" viewKey="View 1">
        <KeyValue
          id="vehicleShortSummary"
          data="{{vehiclesSummaryTransformer.value}}"
          editIcon="bold/interface-edit-pencil"
          enableSaveActions={true}
          groupLayout="singleColumn"
          itemLabelPosition="top"
          labelWrap={true}
        >
          <Property
            id="vehicleImages"
            editable="false"
            editableOptions={{}}
            format="html"
            formatOptions={{}}
            hidden="false"
            label="Vehicle images"
          />
          <Property
            id="serviceProviderImages"
            editable="false"
            editableOptions={{}}
            format="html"
            formatOptions={{}}
            hidden="false"
            label="Service provider images"
          />
        </KeyValue>
        <Link
          id="link5"
          hidden="{{!vehiclesAndUniformsLinkVisible.value}}"
          text="{{isVehiclesSummaryExpanded.value ? 'Hide Details' : 'View Details'}}"
        >
          <Event
            event="click"
            method="setValue"
            params={{
              ordered: [{ value: "{{!isVehiclesSummaryExpanded.value}}" }],
            }}
            pluginId="isVehiclesSummaryExpanded"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Link>
      </View>
    </Container>
    <Container
      id="container13"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{vehiclesStatusIndicator.value}}"
      padding="12px"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgb(255, 235, 231)" }] }}
    >
      <Header>
        <Text
          id="containerTitle150"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="7086c" viewKey="View 1">
        <Status
          id="vehicleTagStatus"
          data="{{ vehiclesStatusIndicator.value }}"
          hidden="{{vehiclesStatusIndicator.value}}"
          itemMode="static"
          margin="0"
          value="noTags"
        >
          <Option
            id="57481"
            color="{{ theme.danger }}"
            icon="bold/interface-delete-circle"
            label="Missing Tags"
            value="noTags"
          />
        </Status>
      </View>
    </Container>
  </View>
</Container>
