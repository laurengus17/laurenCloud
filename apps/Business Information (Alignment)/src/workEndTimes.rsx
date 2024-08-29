<Container
  id="workEndTimes"
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
    <Text id="workEndTimeTitle" value="End Time" verticalAlign="center" />
    <Time
      id="mondayWorkEndInput"
      disabled="{{ !businessInfo.value.businessHours.monday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.businessHours.monday.endTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    monday: {\n      isAvailable: businessInfo.value.businessHours.monday.isAvailable,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    monday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    },\n  }\n} }}",
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
      id="tuesdayWorkEndInput"
      disabled="{{ !businessInfo.value.businessHours.tuesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.businessHours.tuesday.endTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    tuesday: {\n      isAvailable: businessInfo.value.businessHours.tuesday.isAvailable,\n      startTime: businessInfo.value.businessHours.tuesday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    monday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    },\n  }\n} }}",
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
      id="wednesdayWorkEndInput"
      disabled="{{ !businessInfo.value.businessHours.wednesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.businessHours.wednesday.endTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    wednesday: {\n      isAvailable: businessInfo.value.businessHours.wednesday.isAvailable,\n      startTime: businessInfo.value.businessHours.wednesday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    monday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    },\n  }\n} }}",
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
      id="thursdayWorkEndInput"
      disabled="{{ !businessInfo.value.businessHours.thursday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.businessHours.thursday.endTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    thursday: {\n      isAvailable: businessInfo.value.businessHours.thursday.isAvailable,\n      startTime: businessInfo.value.businessHours.thursday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    monday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    },\n  }\n} }}",
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
      id="fridayWorkEndInput"
      disabled="{{ !businessInfo.value.businessHours.friday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.businessHours.friday.endTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    friday: {\n      isAvailable: businessInfo.value.businessHours.friday.isAvailable,\n      startTime: businessInfo.value.businessHours.friday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    monday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    },\n  }\n} }}",
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
      id="saturdayWorkEndInput"
      disabled="{{ !businessInfo.value.businessHours.saturday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.businessHours.saturday.endTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    saturday: {\n      isAvailable: businessInfo.value.businessHours.saturday.isAvailable,\n      startTime: businessInfo.value.businessHours.saturday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    monday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    },\n  }\n} }}",
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
      id="sundayWorkEndInput"
      disabled="{{ !businessInfo.value.businessHours.sunday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ businessInfo.value.businessHours.sunday.endTime }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    sunday: {\n      isAvailable: businessInfo.value.businessHours.sunday.isAvailable,\n      startTime: businessInfo.value.businessHours.sunday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    }\n  }\n} }}",
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
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    monday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: businessInfo.value.businessHours.monday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    },\n  }\n} }}",
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
