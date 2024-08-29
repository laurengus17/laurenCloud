<Container
  id="workHoursSchedule"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Text
      id="workHoursTitle"
      value="<h3>Work Hours</h3>"
      verticalAlign="center"
    />
  </Header>
  <View id="4f2eb" viewKey="View 1">
    <Container
      id="workScheduleOptions"
      disabled=""
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      margin="0px"
      padding="0px"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="4f2eb" viewKey="View 1">
        <Checkbox
          id="workAllDaysCheckbox"
          disabled=""
          label="Same for all days"
          value="{{ applicantInformation.value.workHoursSameForAllDays }}"
        >
          <Event
            event="true"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ {\n  ...applicantInformation.value,\n  workHoursSameForAllDays: true,\n  workHours: !applicantInformation.value.available24Hours ? defaultWorkHours.value : _24HoursSchedule.value\n} }}",
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
                    "{{ {\n  ...applicantInformation.value,\n  workHoursSameForAllDays: false,\n} }}",
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
        </Checkbox>
        <Checkbox
          id="available24HoursCheckbox"
          disabled=""
          label="Available 24 hours"
          value="{{ applicantInformation.value.available24Hours }}"
        >
          <Event
            event="true"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ {\n  ...applicantInformation.value,\n  available24Hours: true,\n  workHours: _24HoursSchedule.value,\n  availableAfterHours: false,\n  afterHoursSameForAllDays: false,\n  afterHours: null,\n} }}",
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
                    "{{ {\n  ...applicantInformation.value,\n  available24Hours: false,\n  workHours: defaultWorkHours.value,\n} }}",
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
        </Checkbox>
      </View>
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
    <Include src="./workDaysAvailability.rsx" />
    <Include src="./workStartTimes.rsx" />
    <Include src="./workEndTimes.rsx" />
  </View>
</Container>
