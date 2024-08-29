<Container
  id="afterStartTimes"
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
    <Text id="workStartTimeTitle2" value="Start Time" verticalAlign="center" />
    <Time
      id="mondayAfterStartInput"
      disabled="{{ !businessInfo.value.afterHours?.monday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.afterHours?.monday.startTime }}"
    >
      <Event
        enabled=""
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    monday: {\n      isAvailable: businessInfo.value.afterHours?.monday.isAvailable,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.monday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.sunday.endTime,\n    },\n  }\n} }}",
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
      id="tuesdayAfterStartInput"
      disabled="{{ !businessInfo.value.afterHours?.tuesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.afterHours?.tuesday.startTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    tuesday: {\n      isAvailable: businessInfo.value.afterHours?.tuesday.isAvailable,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.tuesday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.sunday.endTime,\n    },\n  }\n} }}",
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
      id="wednesdayAfterStartInput"
      disabled="{{ !businessInfo.value.afterHours?.wednesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.afterHours?.wednesday.startTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    wednesday: {\n      isAvailable: businessInfo.value.afterHours?.wednesday.isAvailable,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.wednesday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.sunday.endTime,\n    },\n  }\n} }}",
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
      id="thursdayAfterStartInput"
      disabled="{{ !businessInfo.value.afterHours?.thursday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.afterHours?.thursday.startTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n} }}\n{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    thursday: {\n      isAvailable: businessInfo.value.afterHours?.thursday.isAvailable,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.thursday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.sunday.endTime,\n    },\n  }\n} }}",
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
      id="fridayAfterStartInput"
      disabled="{{ !businessInfo.value.afterHours?.friday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.afterHours?.friday.startTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    friday: {\n      isAvailable: businessInfo.value.afterHours?.friday.isAvailable,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.friday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.sunday.endTime,\n    },\n  }\n} }}",
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
      id="saturdayAfterStartInput"
      disabled="{{ !businessInfo.value.afterHours?.saturday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.afterHours?.saturday.startTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    saturday: {\n      isAvailable: businessInfo.value.afterHours?.saturday.isAvailable,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.saturday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.sunday.endTime,\n    },\n  }\n} }}",
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
      id="sundayAfterStartInput"
      disabled="{{ !businessInfo.value.afterHours?.sunday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.afterHours?.sunday.startTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    sunday: {\n      isAvailable: businessInfo.value.afterHours?.sunday.isAvailable,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.sunday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: businessInfo.value.afterHours?.sunday.endTime,\n    },\n  }\n} }}",
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
