<App>
  <Include src="./functions.rsx" />
  <GlobalWidgetProp
    id="serviceProviderId"
    defaultValue="6e3a681c-7bf5-467a-9dd7-5762cabe37b5"
  />
  <GlobalWidgetOutput
    id="unformSize"
    value="{{uniformClothingSize.selectedItem?.value}}"
  />
  <GlobalWidgetOutput
    id="uniformEntityIds"
    value="{{uniformMultiselect.value.map(entity => entity)}}"
  />
  <GlobalWidgetOutput
    id="uniformOptIn"
    description="Boolean option to receive uniforms"
    value="{{uniformOptinToggle.value}}"
  />
  <Include src="./src/reviewModal.rsx" />
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
      <Container
        id="vehiclesCollapsibleContainer"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0 0 20px 0"
        marginType="normal"
        padding="12px"
        showBody={true}
        showHeader={true}
      >
        <Header>
          <ToggleButton
            id="vehiclesToggle"
            horizontalAlign="right"
            iconForFalse="bold/interface-arrows-button-down"
            iconForTrue="bold/interface-arrows-button-up"
            iconPosition="replace"
            marginType="normal"
            styleVariant="outline"
            text="{{ self.value ? 'Hide' : 'Show' }}"
            value="{{getVehiclesAndUniforms.data.vehicles.length !== 0}}"
          >
            <Event
              event="change"
              method="setShowBody"
              params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
              pluginId="vehiclesCollapsibleContainer"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToggleButton>
          <Text
            id="collapsibleTitle8"
            marginType="normal"
            value="#### Vehicle Images"
            verticalAlign="center"
          />
        </Header>
        <View id="0b337" viewKey="View 1">
          <ListViewBeta
            id="vehicleListView"
            _primaryKeys=""
            data="{{ vehiclesAndUniforms.value.vehicles }} "
            heightType="auto"
            hidden="{{!vehiclesToggle.value}}"
            itemWidth="200px"
            margin="0"
            numColumns={3}
            padding="12px"
          >
            <Text
              id="collapsibleTitle11"
              marginType="normal"
              value="#### Vehicle {{ i + 1 }}"
              verticalAlign="center"
            />
            <Container
              id="vehicleFrontContainer"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              padding="12px"
              showBody={true}
              showHeader={true}
            >
              <Header>
                <Text
                  id="vehicleFrontTitle"
                  value="##### Vehicle {{ i + 1 }} - Front"
                  verticalAlign="center"
                />
              </Header>
              <View id="315ab" viewKey="View 1">
                <Image
                  id="frontPhoto"
                  dbBlobId="cabfeccc-9c67-4eb3-9f10-cc11ba70dbce"
                  fit="contain"
                  heightType="fixed"
                  horizontalAlign="center"
                  src="{{vehiclesAndUniforms.value.vehicles[i].frontPhoto.file.getUrl}}"
                >
                  <Event
                    event="click"
                    method="setValue"
                    params={{
                      ordered: [
                        {
                          value:
                            "{{ {\n  ...modalPhoto.value,\n    id: vehiclesAndUniforms.value.vehicles[i].frontPhoto.file.id,\n    photoName: `Vehicle ${i+1} - Front`,\n    getUrl: vehiclesAndUniforms.value.vehicles[i].frontPhoto.file.getUrl,\n    tags: vehiclesAndUniforms.value.vehicles[i].frontPhoto.tags,\n} }}",
                        },
                      ],
                    }}
                    pluginId="modalPhoto"
                    type="state"
                    waitMs="0"
                    waitType="debounce"
                  />
                  <Event
                    event="click"
                    method="show"
                    params={{ ordered: [] }}
                    pluginId="reviewModal"
                    type="widget"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Image>
              </View>
            </Container>
            <Container
              id="vehicleBackContainer"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              padding="12px"
              showBody={true}
              showHeader={true}
            >
              <Header>
                <Text
                  id="vehicleBackTitle"
                  value="##### Vehicle {{ i + 1 }} - Back"
                  verticalAlign="center"
                />
              </Header>
              <View id="315ab" viewKey="View 1">
                <Image
                  id="backPhoto"
                  dbBlobId="0657bef3-2194-403d-add4-a17a79866b32"
                  fit="contain"
                  heightType="fixed"
                  horizontalAlign="center"
                  src="{{vehiclesAndUniforms.value.vehicles[i].backPhoto.file.getUrl}}"
                >
                  <Event
                    event="click"
                    method="setValue"
                    params={{
                      ordered: [
                        {
                          value:
                            "{{ {\n  ...modalPhoto.value,\n    id: vehiclesAndUniforms.value.vehicles[i].backPhoto.file.id,\n    photoName: `Vehicle ${i+1} - Back`,\n    getUrl: vehiclesAndUniforms.value.vehicles[i].backPhoto.file.getUrl,\n    tags: vehiclesAndUniforms.value.vehicles[i].backPhoto.tags,\n} }}",
                        },
                      ],
                    }}
                    pluginId="modalPhoto"
                    type="state"
                    waitMs="0"
                    waitType="debounce"
                  />
                  <Event
                    event="click"
                    method="show"
                    params={{ ordered: [] }}
                    pluginId="reviewModal"
                    type="widget"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Image>
              </View>
            </Container>
            <Container
              id="vehicleLeftContainer"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              padding="12px"
              showBody={true}
              showHeader={true}
            >
              <Header>
                <Text
                  id="vehicleLeftTitle"
                  value="##### Vehicle {{ i + 1 }} - Left"
                  verticalAlign="center"
                />
              </Header>
              <View id="315ab" viewKey="View 1">
                <Image
                  id="leftPhoto"
                  dbBlobId="dff6125e-ae0b-4d97-83b4-0e74161b4768"
                  fit="contain"
                  heightType="fixed"
                  horizontalAlign="center"
                  src="{{vehiclesAndUniforms.value.vehicles[i].leftPhoto.file.getUrl}}"
                >
                  <Event
                    event="click"
                    method="setValue"
                    params={{
                      ordered: [
                        {
                          value:
                            "{{ {\n  ...modalPhoto.value,\n    id: vehiclesAndUniforms.value.vehicles[i].leftPhoto.file.id,\n    photoName: `Vehicle ${i+1} - Left`,\n    getUrl: vehiclesAndUniforms.value.vehicles[i].leftPhoto.file.getUrl,\n    tags: vehiclesAndUniforms.value.vehicles[i].leftPhoto.tags,\n} }}",
                        },
                      ],
                    }}
                    pluginId="modalPhoto"
                    type="state"
                    waitMs="0"
                    waitType="debounce"
                  />
                  <Event
                    event="click"
                    method="show"
                    params={{ ordered: [] }}
                    pluginId="reviewModal"
                    type="widget"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Image>
              </View>
            </Container>
            <Container
              id="vehicleRightContainer"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              padding="12px"
              showBody={true}
              showHeader={true}
            >
              <Header>
                <Text
                  id="vehicleRightTitle"
                  value="##### Vehicle {{ i + 1 }} - Right"
                  verticalAlign="center"
                />
              </Header>
              <View id="315ab" viewKey="View 1">
                <Image
                  id="rightPhoto"
                  dbBlobId="3ab622d8-52fd-4d8d-a7a6-65768f7e73c8"
                  fit="contain"
                  heightType="fixed"
                  horizontalAlign="center"
                  src="{{vehiclesAndUniforms.value.vehicles[i].rightPhoto.file.getUrl}}"
                >
                  <Event
                    event="click"
                    method="setValue"
                    params={{
                      ordered: [
                        {
                          value:
                            "{{ {\n  ...modalPhoto.value,\n    id: vehiclesAndUniforms.value.vehicles[i].rightPhoto.file.id,\n    photoName: `Vehicle ${i+1} - Right`,\n    getUrl: vehiclesAndUniforms.value.vehicles[i].rightPhoto.file.getUrl,\n    tags: vehiclesAndUniforms.value.vehicles[i].rightPhoto.tags,\n} }}",
                        },
                      ],
                    }}
                    pluginId="modalPhoto"
                    type="state"
                    waitMs="0"
                    waitType="debounce"
                  />
                  <Event
                    event="click"
                    method="show"
                    params={{ ordered: [] }}
                    pluginId="reviewModal"
                    type="widget"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Image>
              </View>
            </Container>
            <Container
              id="vehicleVINContainer"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              padding="12px"
              showBody={true}
              showHeader={true}
            >
              <Header>
                <Text
                  id="vehicleVINTitle"
                  value="##### Vehicle {{ i + 1 }} - VIN"
                  verticalAlign="center"
                />
              </Header>
              <View id="315ab" viewKey="View 1">
                <Image
                  id="vinPhoto"
                  dbBlobId="e90fedf2-09c3-46a9-acf3-4f46d5fa6e88"
                  fit="contain"
                  heightType="fixed"
                  horizontalAlign="center"
                  src="{{vehiclesAndUniforms.value.vehicles[i].vinPhoto.file.getUrl}}"
                >
                  <Event
                    event="click"
                    method="setValue"
                    params={{
                      ordered: [
                        {
                          value:
                            "{{ {\n  ...modalPhoto.value,\n    id: vehiclesAndUniforms.value.vehicles[i].vinPhoto.file.id,\n    photoName: `Vehicle ${i+1} - VIN`,\n    getUrl: vehiclesAndUniforms.value.vehicles[i].vinPhoto.file.getUrl,\n    tags: vehiclesAndUniforms.value.vehicles[i].vinPhoto.tags,\n} }}",
                        },
                      ],
                    }}
                    pluginId="modalPhoto"
                    type="state"
                    waitMs="0"
                    waitType="debounce"
                  />
                  <Event
                    event="click"
                    method="show"
                    params={{ ordered: [] }}
                    pluginId="reviewModal"
                    type="widget"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Image>
              </View>
            </Container>
          </ListViewBeta>
        </View>
      </Container>
      <Container
        id="spCollapsibleContainer"
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
            id="collapsibleTitle9"
            marginType="normal"
            value="#### Service Provider Images"
            verticalAlign="center"
          />
          <ToggleButton
            id="collapsibleToggle9"
            horizontalAlign="right"
            iconForFalse="bold/interface-arrows-button-down"
            iconForTrue="bold/interface-arrows-button-up"
            iconPosition="replace"
            marginType="normal"
            styleVariant="outline"
            text="{{ self.value ? 'Hide' : 'Show' }}"
            value="{{ spCollapsibleContainer.showBody }}"
          >
            <Event
              event="change"
              method="setShowBody"
              params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
              pluginId="spCollapsibleContainer"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToggleButton>
        </Header>
        <View id="42bce" viewKey="View 1">
          <ListViewBeta
            id="listView1"
            _primaryKeys=""
            data="{{ vehiclesAndUniforms.value.teamMembers }}"
            heightType="auto"
            itemWidth="200px"
            margin="0"
            numColumns={3}
            padding="0"
          >
            <Container
              id="container1"
              footerPadding="4px 12px"
              headerPadding="4px 12px"
              padding="12px"
              showBody={true}
              showBorder={false}
            >
              <Header>
                <Text
                  id="containerTitle1"
                  value="#### {{ item }}"
                  verticalAlign="center"
                />
              </Header>
              <View id="a8fc9" viewKey="View 1">
                <Container
                  id="ApplicantWaistUp_Container2"
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  heightType="fixed"
                  marginType="normal"
                  padding="0"
                  showBody={true}
                  showFooter={true}
                  showHeader={true}
                >
                  <Header>
                    <Text
                      id="ApplicantWaistUp_Text2"
                      marginType="normal"
                      value="##### Applicant - Waist Up"
                      verticalAlign="center"
                    />
                  </Header>
                  <View id="621b3" viewKey="View 1">
                    <Image
                      id="ApplicantWaistUp_image2"
                      fit="contain"
                      horizontalAlign="center"
                      margin="0"
                      marginType="normal"
                      src="{{ vehiclesAndUniforms.value.teamMembers[i].waistUpPhoto.file.getUrl}}"
                      style={{ ordered: [{ borderRadius: "0px" }] }}
                    >
                      <Event
                        event="click"
                        method="setValue"
                        params={{
                          ordered: [
                            {
                              value:
                                "{{ {\n  ...modalPhoto.value,\n    id: vehiclesAndUniforms.value.teamMembers[i].waistUpPhoto.file.id,\n    photoName: `Applicant - Waist Up`,\n    getUrl: vehiclesAndUniforms.value.teamMembers[i].waistUpPhoto.file.getUrl,\n    tags: vehiclesAndUniforms.value.teamMembers[i].waistUpPhoto.tags,\n} }}",
                            },
                          ],
                        }}
                        pluginId="modalPhoto"
                        type="state"
                        waitMs="0"
                        waitType="debounce"
                      />
                      <Event
                        event="click"
                        method="show"
                        params={{ ordered: [] }}
                        pluginId="reviewModal"
                        type="widget"
                        waitMs="0"
                        waitType="debounce"
                      />
                    </Image>
                  </View>
                  <Event
                    event="click"
                    method="show"
                    params={{ ordered: [] }}
                    pluginId="modalFrame"
                    type="widget"
                    waitMs="0"
                    waitType="debounce"
                  />
                  <Event
                    event="click"
                    method="setCurrentView"
                    params={{ ordered: [{ viewKey: "ApplicantWaistUp" }] }}
                    pluginId="modalContainerDriversLicense"
                    type="widget"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Container>
                <Container
                  id="ApplicantHeadshot_Container2"
                  enableFullBleed={true}
                  footerPadding="4px 12px"
                  headerPadding="4px 12px"
                  heightType="fixed"
                  marginType="normal"
                  padding="12px"
                  showBody={true}
                  showFooter={true}
                  showHeader={true}
                >
                  <Header>
                    <Text
                      id="ApplicantHeadshot_Text2"
                      marginType="normal"
                      value="##### Applicant - Headshot"
                      verticalAlign="center"
                    />
                  </Header>
                  <View id="621b3" viewKey="View 1">
                    <Image
                      id="ApplicantHeadshot_image2"
                      fit="contain"
                      horizontalAlign="center"
                      margin="0"
                      marginType="normal"
                      src="{{ vehiclesAndUniforms.value.teamMembers[i].headshotPhoto.file.getUrl}}"
                      style={{ ordered: [{ borderRadius: "0px" }] }}
                    >
                      <Event
                        event="click"
                        method="setValue"
                        params={{
                          ordered: [
                            {
                              value:
                                "{{ {\n  ...modalPhoto.value,\n    id: vehiclesAndUniforms.value.teamMembers[i].headshotPhoto.file.id,\n    photoName: `Applicant - Headshot`,\n    getUrl: vehiclesAndUniforms.value.teamMembers[i].headshotPhoto.file.getUrl,\n    tags: vehiclesAndUniforms.value.teamMembers[i].headshotPhoto.tags,\n} }}",
                            },
                          ],
                        }}
                        pluginId="modalPhoto"
                        type="state"
                        waitMs="0"
                        waitType="debounce"
                      />
                      <Event
                        event="click"
                        method="show"
                        params={{ ordered: [] }}
                        pluginId="reviewModal"
                        type="widget"
                        waitMs="0"
                        waitType="debounce"
                      />
                    </Image>
                  </View>
                  <Event
                    event="click"
                    method="show"
                    params={{ ordered: [] }}
                    pluginId="modalFrame"
                    type="widget"
                    waitMs="0"
                    waitType="debounce"
                  />
                  <Event
                    event="click"
                    method="setCurrentView"
                    params={{ ordered: [{ viewKey: "ApplicantHeadshot" }] }}
                    pluginId="modalContainerDriversLicense"
                    type="widget"
                    waitMs="0"
                    waitType="debounce"
                  />
                </Container>
              </View>
            </Container>
          </ListViewBeta>
        </View>
      </Container>
      <Include src="./src/uniformCollapsibleContainer.rsx" />
    </ModuleContainerWidget>
  </Frame>
</App>
