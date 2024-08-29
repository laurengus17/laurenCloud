<Container
  id="afterHoursSchedule"
  disabled=""
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  hidden="{{ !applicantInformation.value.availableAfterHours }}"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Text
      id="workHoursTitle2"
      value="<h3>After Hours</h3>"
      verticalAlign="center"
    />
  </Header>
  <View id="4f2eb" viewKey="View 1">
    <Checkbox
      id="afterAllDaysCheckbox"
      disabled=""
      label="Same for all days"
      value="{{ applicantInformation.value.afterHoursSameForAllDays }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHoursSameForAllDays: !applicantInformation.value.afterHoursSameForAllDays,\n  afterHours: afterAllDaysCheckbox.value ? defaultAfterHours.value : applicantInformation.value.afterHours,\n} }}",
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
    <Include src="./afterDaysAvailability.rsx" />
    <Include src="./afterStartTimes.rsx" />
    <Include src="./afterEndTimes.rsx" />
  </View>
</Container>
