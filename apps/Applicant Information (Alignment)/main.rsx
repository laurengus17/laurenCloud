<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <GlobalWidgetProp
    id="serviceProviderID"
    defaultValue="bab74900-f917-4ad9-8f22-8682c741505c"
  />
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
        id="applicantInformationContainer"
        disabled=""
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        margin="0"
        marginType="normal"
        padding="24px"
        showBody={true}
        showBorder={false}
        style={{ ordered: [] }}
      >
        <Header>
          <Text
            id="containerTitle139"
            marginType="normal"
            value="#### Container title"
            verticalAlign="center"
          />
        </Header>
        <View id="6c417" viewKey="View 1">
          <Form
            id="applicantInfoForm"
            footerPadding="4px 12px"
            headerPadding="4px 12px"
            initialData="{{ applicantInformation.value }}"
            margin="0"
            padding="0"
            requireValidation={true}
            resetAfterSubmit={true}
            showBody={true}
            showBorder={false}
          >
            <Header>
              <Text
                id="formTitle1"
                value="#### Form title"
                verticalAlign="center"
              />
            </Header>
            <Body>
              <Text
                id="personalInfoTitle"
                marginType="normal"
                value="<h3>Personal Info & Contact</h3>"
                verticalAlign="center"
              />
              <ToggleButton
                id="editToggleButton"
                disabled="{{ applicantInfoForm.invalid }}"
                horizontalAlign="stretch"
                iconForFalse="bold/interface-edit-write-1"
                iconForTrue="bold/computer-storage-floppy-disk"
                iconPosition="right"
                styleVariant="outline"
                text="{{ !isEditing.value ? 'Edit' : 'Save' }}"
                value="{{ isEditing.value }}"
              >
                <Event
                  event="change"
                  method="setValue"
                  params={{ ordered: [{ value: "{{ !isEditing.value }}" }] }}
                  pluginId="isEditing"
                  type="state"
                  waitMs="0"
                  waitType="debounce"
                />
              </ToggleButton>
              <Include src="./src/personalInfoContainer.rsx" />
              <Text
                id="emergencyContactsTitle"
                marginType="normal"
                value="<h3>Emergency Contacts</h3>"
                verticalAlign="center"
              />
              <ListViewBeta
                id="emergencyContactsListView"
                computeAllInstanceValues={false}
                data="{{applicantInformation.value.emergencyContacts}}"
                heightType="auto"
                itemWidth="200px"
                margin="0"
                marginType="none"
                numColumns={3}
                padding="0"
              >
                <Include src="./src/emergencyContactContainer.rsx" />
              </ListViewBeta>
              <Container
                id="availabilitySchedules"
                disabled="{{ !isEditing.value }}"
                footerPadding="4px 12px"
                headerPadding="4px 12px"
                hidden="{{ applicantInformation.value.spKey !== 'independent_technician' }}"
                margin="0px"
                padding="0px"
                showBody={true}
                showBorder={false}
                style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
              >
                <View id="4f2eb" viewKey="View 1">
                  <Include src="./src/workHoursSchedule.rsx" />
                  <Switch
                    id="availableAfterHoursSwitch"
                    disabled=""
                    label="Available after hours"
                    value="{{ applicantInformation.value.availableAfterHours }}"
                  >
                    <Event
                      event="true"
                      method="setValue"
                      params={{
                        ordered: [
                          {
                            value:
                              "{{ {\n  ...applicantInformation.value,\n  availableAfterHours:  true,\n  afterHours: defaultAfterHours.value,\n  afterHoursSameForAllDays: true,\n} }}",
                          },
                        ],
                      }}
                      pluginId="applicantInformation"
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
                              "{{ {\n  ...applicantInformation.value,\n  availableAfterHours: false,\n  afterHoursSameForAllDays: false,\n  afterHours: null,\n} }}",
                          },
                        ],
                      }}
                      pluginId="applicantInformation"
                      type="state"
                      waitMs="0"
                      waitType="debounce"
                    />
                    <Event
                      enabled="{{ !applicantInfoForm.invalid }}"
                      event="change"
                      method="trigger"
                      params={{ ordered: [] }}
                      pluginId="updateApplicantInfo"
                      type="datasource"
                      waitMs="0"
                      waitType="debounce"
                    />
                  </Switch>
                  <Include src="./src/afterHoursSchedule.rsx" />
                </View>
              </Container>
            </Body>
            <Footer>
              <Button
                id="formButton1"
                submit={true}
                submitTargetId="applicantInfoForm"
                text="Submit"
              />
            </Footer>
          </Form>
        </View>
      </Container>
    </ModuleContainerWidget>
  </Frame>
</App>
