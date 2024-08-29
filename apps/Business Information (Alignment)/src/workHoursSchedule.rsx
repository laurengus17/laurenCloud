<Container
  id="workHoursSchedule"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showBorder={false}
  showHeader={true}
>
  <Header>
    <Text
      id="businessHoursTitle"
      value="<h3>Business Hours</h3>"
      verticalAlign="center"
    />
  </Header>
  <View id="4f2eb" viewKey="View 1">
    <Container
      id="businessScheduleOptions"
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
          label="Same for all days"
          value="{{ businessInfo.value.businessHoursSameForAllDays }}"
        >
          <Event
            enabled=""
            event="true"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ {\n  ...businessInfo.value,\n  businessHoursSameForAllDays: true,\n  businessHours: !businessInfo.value.available24Hours ? defaultWorkHours.value : _24HoursSchedule.value\n} }}",
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
                    "{{ {\n  ...businessInfo.value,\n  businessHoursSameForAllDays: false,\n} }}",
                },
              ],
            }}
            pluginId="businessInfo"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
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
        <Checkbox
          id="available24HoursCheckbox"
          label="Available 24 hours"
          value="{{ businessInfo.value.available24Hours }}"
        >
          <Event
            event="true"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ {\n  ...businessInfo.value,\n  available24Hours: true,\n  businessHours: _24HoursSchedule.value,\n  availableAfterHours: false,\n  afterHoursSameForAllDays: false,\n  afterHours: null,\n} }}",
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
                    "{{ {\n  ...businessInfo.value,\n  available24Hours: false,\n  businessHours: defaultWorkHours.value,\n} }}",
                },
              ],
            }}
            pluginId="businessInfo"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled=""
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
      </View>
    </Container>
    <Include src="./workDaysAvailability.rsx" />
    <Include src="./workStartTimes.rsx" />
    <Include src="./workEndTimes.rsx" />
    <Time
      id="sundayWorkStartInput"
      disabled="{{ !businessInfo.value.businessHours.sunday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.businessHours.sunday.startTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    sunday: {\n      isAvailable: businessInfo.value.businessHours.sunday.isAvailable,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.sunday.endTime,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ businessInfo.value.businessHoursSameForAllDays }}"
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    monday: {\n      isAvailable: true,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.sunday.endTime,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="blur"
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
    </Time>
  </View>
</Container>
