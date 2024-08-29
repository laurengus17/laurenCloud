<Container
  id="workStartTimes"
  disabled="{{businessInfo.value.available24Hours}}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0px"
  padding="0px"
  showBody={true}
  showBorder={false}
  style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
>
  <View id="4f2eb" viewKey="View 1">
    <Text id="workStartTimeTitle" value="Start Time" verticalAlign="center" />
    <Time
      id="mondayWorkStartInput"
      disabled="{{ !businessInfo.value.businessHours.monday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.businessHours.monday.startTime }}"
    >
      <Event
        enabled=""
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    monday: {\n      isAvailable: businessInfo.value.businessHours.monday.isAvailable,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.monday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    monday: {\n      isAvailable: true,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.sunday.endTime,\n    },\n  }\n} }}",
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
      id="tuesdayWorkStartInput"
      disabled="{{ !businessInfo.value.businessHours.tuesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.businessHours.tuesday.startTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    tuesday: {\n      isAvailable: businessInfo.value.businessHours.tuesday.isAvailable,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.tuesday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    monday: {\n      isAvailable: true,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.sunday.endTime,\n    },\n  }\n} }}",
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
      id="wednesdayWorkStartInput"
      disabled="{{ !businessInfo.value.businessHours.wednesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.businessHours.wednesday.startTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    wednesday: {\n      isAvailable: businessInfo.value.businessHours.wednesday.isAvailable,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.wednesday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    monday: {\n      isAvailable: true,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.sunday.endTime,\n    },\n  }\n} }}",
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
      id="thursdayWorkStartInput"
      disabled="{{ !businessInfo.value.businessHours.thursday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.businessHours.thursday.startTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    thursday: {\n      isAvailable: businessInfo.value.businessHours.thursday.isAvailable,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.thursday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    monday: {\n      isAvailable: true,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.sunday.endTime,\n    },\n  }\n} }}",
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
      id="fridayWorkStartInput"
      disabled="{{ !businessInfo.value.businessHours.friday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.businessHours.friday.startTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    friday: {\n      isAvailable: businessInfo.value.businessHours.friday.isAvailable,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.friday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    monday: {\n      isAvailable: true,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.sunday.endTime,\n    },\n  }\n} }}",
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
      id="saturdayWorkStartInput"
      disabled="{{ !businessInfo.value.businessHours.saturday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.businessHours.saturday.startTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    saturday: {\n      isAvailable: businessInfo.value.businessHours.saturday.isAvailable,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.saturday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    monday: {\n      isAvailable: true,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: businessInfo.value.businessHours.sunday.endTime,\n    },\n  }\n} }}",
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
