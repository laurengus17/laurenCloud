<Container
  id="afterHoursSchedule"
  disabled=""
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  hidden="{{ !businessInfo.value.availableAfterHours }}"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Text
      id="afterHoursTitle"
      value="<h3>After Hours</h3>"
      verticalAlign="center"
    />
  </Header>
  <View id="4f2eb" viewKey="View 1">
    <Checkbox
      id="afterAllDaysCheckbox"
      label="Same for all days"
      value="{{ businessInfo.value.afterHoursSameForAllDays }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHoursSameForAllDays: !businessInfo.value.afterHoursSameForAllDays,\n  afterHours: afterAllDaysCheckbox.value ? defaultAfterHours.value : businessInfo.value.afterHours,\n} }}",
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
    </Checkbox>
    <Include src="./afterDaysAvailability.rsx" />
    <Include src="./afterStartTimes.rsx" />
    <Include src="./afterEndTimes.rsx" />
  </View>
</Container>
