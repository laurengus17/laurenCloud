<Container
  id="container99"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  marginType="normal"
  padding="0"
  showBody={true}
  showBorder={false}
  style={{ ordered: [] }}
>
  <Header>
    <Text
      id="containerTitle146"
      marginType="normal"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="6c417" viewKey="View 1">
    <Include src="./container104.rsx" />
    <Include src="./container105.rsx" />
    <Container
      id="container106"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      marginType="none"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <Header>
        <Text
          id="containerTitle155"
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="f8183" viewKey="View 1">
        <Text
          id="text115"
          marginType="normal"
          value="<h4>Mailing Address</h4>"
          verticalAlign="center"
        />
        <Status
          id="status23"
          hidden="{{ businessInfo.value.mailingAddressDifferent }}"
          itemMode="static"
          marginType="normal"
          style={{ ordered: [{ color: "rgba(0, 0, 0, 1)" }] }}
          value="{{ !businessInfo.value.mailingAddressDifferent }}"
        >
          <Option
            id="21286"
            color="{{ theme.success }}"
            icon="bold/interface-validation-check-circle"
            label="Same as Business Address"
            value="true"
          />
        </Status>
        <Include src="./container107.rsx" />
      </View>
    </Container>
    <Container
      id="container108"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      marginType="none"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <Header>
        <Text
          id="containerTitle157"
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="f8183" viewKey="View 1">
        <Text
          id="text116"
          marginType="normal"
          value="<h4>Administrative Contacts</h4>"
          verticalAlign="center"
        />
        <ListViewBeta
          id="administrativeContactsListView"
          computeAllInstanceValues={false}
          data="{{getSPBusinessInfo.data.administrativeContacts}}"
          heightType="auto"
          itemWidth="200px"
          margin="0"
          marginType="none"
          numColumns={3}
          padding="0"
        >
          <Include src="./emergencyContactContainer.rsx" />
        </ListViewBeta>
        <Container
          id="availabilitySchedules"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          hidden=""
          margin="0px"
          padding="0px"
          showBody={true}
          showBorder={false}
          style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
        >
          <View id="4f2eb" viewKey="View 1">
            <Include src="./workHoursSchedule.rsx" />
            <Switch
              id="availableAfterHoursSwitch"
              label="Available after hours"
              value="{{ businessInfo.value.availableAfterHours }}"
            >
              <Event
                event="true"
                method="setValue"
                params={{
                  ordered: [
                    {
                      value:
                        "{{ {\n  ...businessInfo.value,\n  availableAfterHours:  true,\n  afterHours: defaultAfterHours.value,\n  afterHoursSameForAllDays: true,\n} }}",
                    },
                  ],
                }}
                pluginId="businessInfo"
                type="state"
                waitMs="0"
                waitType="debounce"
              />
              <Event
                event="false"
                method="setValue"
                params={{
                  ordered: [
                    {
                      value:
                        "{{ {\n  ...businessInfo.value,\n  availableAfterHours: false,\n  afterHoursSameForAllDays: false,\n  afterHours: null,\n} }}",
                    },
                  ],
                }}
                pluginId="businessInfo"
                type="state"
                waitMs="0"
                waitType="debounce"
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
                pluginId="updateBusinessInformation"
                type="datasource"
                waitMs="0"
                waitType="debounce"
              />
            </Switch>
            <Include src="./afterHoursSchedule.rsx" />
          </View>
        </Container>
      </View>
    </Container>
    <Container
      id="container113"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      hidden="{{ !getSPBusinessInfo.data.afterHoursContactsAreDifferent }}"
      margin="0"
      marginType="none"
      padding="12px"
      showBody={true}
      showBorder={false}
    >
      <Header>
        <Text
          id="containerTitle166"
          marginType="normal"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="f8183" viewKey="View 1">
        <Text
          id="afterHoursContacts"
          marginType="normal"
          value="<h4>After Hours Contacts</h4>"
          verticalAlign="center"
        />
        <Container
          id="container114"
          footerPadding="4px 12px"
          headerPadding="4px 12px"
          margin="0"
          padding="0"
          showBody={true}
          showBorder={false}
        >
          <Header>
            <Text
              id="containerTitle165"
              value="#### Container title"
              verticalAlign="center"
            />
          </Header>
          <View id="1c9e4" viewKey="View 1">
            <ListViewBeta
              id="administrativeContactsListView2"
              computeAllInstanceValues={false}
              data="{{businessInfo.value.administrativeContacts}}"
              heightType="auto"
              itemWidth="200px"
              margin="0"
              marginType="none"
              numColumns={3}
              padding="0"
            >
              <Include src="./emergencyContactContainer2.rsx" />
            </ListViewBeta>
          </View>
        </Container>
      </View>
    </Container>
  </View>
</Container>
