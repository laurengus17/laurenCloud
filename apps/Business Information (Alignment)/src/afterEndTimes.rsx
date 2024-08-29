<Container
  id="afterEndTimes"
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
    <Text id="workEndTimeTitle2" value="End Time" verticalAlign="center" />
    <Time
      id="mondayAfterEndInput"
      disabled="{{ !businessInfo.value.afterHours?.monday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.afterHours?.monday.endTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    monday: {\n      isAvailable: businessInfo.value.afterHours?.monday.isAvailable,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ businessInfo.value.afterHoursSameForAllDays }}"
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    },\n  }\n} }}",
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
    <Time
      id="tuesdayAfterEndInput"
      disabled="{{ !businessInfo.value.afterHours?.tuesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.afterHours?.tuesday.endTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    tuesday: {\n      isAvailable: businessInfo.value.afterHours?.tuesday.isAvailable,\n      startTime: businessInfo.value.afterHours?.tuesday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ businessInfo.value.afterHoursSameForAllDays }}"
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    },\n  }\n} }}",
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
    <Time
      id="wednesdayAfterEndInput"
      disabled="{{ !businessInfo.value.afterHours?.wednesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.afterHours?.wednesday.endTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    wednesday: {\n      isAvailable: businessInfo.value.afterHours?.wednesday.isAvailable,\n      startTime: businessInfo.value.afterHours?.wednesday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ businessInfo.value.afterHoursSameForAllDays }}"
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    },\n  }\n} }}",
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
    <Time
      id="thursdayAfterEndInput"
      disabled="{{ !businessInfo.value.afterHours?.thursday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.afterHours?.thursday.endTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    thursday: {\n      isAvailable: businessInfo.value.afterHours?.thursday.isAvailable,\n      startTime: businessInfo.value.afterHours?.thursday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ businessInfo.value.afterHoursSameForAllDays }}"
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    },\n  }\n} }}",
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
    <Time
      id="fridayAfterEndInput"
      disabled="{{ !businessInfo.value.afterHours?.friday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.afterHours?.friday.endTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    friday: {\n      isAvailable: businessInfo.value.afterHours?.friday.isAvailable,\n      startTime: businessInfo.value.afterHours?.friday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ businessInfo.value.afterHoursSameForAllDays }}"
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    },\n  }\n} }}",
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
    <Time
      id="saturdayAfterEndInput"
      disabled="{{ !businessInfo.value.afterHours?.saturday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.afterHours?.saturday.endTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    saturday: {\n      isAvailable: businessInfo.value.afterHours?.saturday.isAvailable,\n      startTime: businessInfo.value.afterHours?.saturday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ businessInfo.value.afterHoursSameForAllDays }}"
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    },\n  }\n} }}",
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
    <Time
      id="sundayAfterEndInput"
      disabled="{{ !businessInfo.value.afterHours?.sunday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.afterHours?.sunday.endTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    sunday: {\n      isAvailable: businessInfo.value.afterHours?.sunday.isAvailable,\n      startTime: businessInfo.value.afterHours?.sunday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ businessInfo.value.afterHoursSameForAllDays }}"
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: businessInfo.value.afterHours?.monday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    },\n  }\n} }}",
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
