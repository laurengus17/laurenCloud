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
      disabled="{{ !applicantInformation.value.afterHours?.monday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.afterHours?.monday.endTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    monday: {\n      isAvailable: applicantInformation.value.afterHours?.monday.isAvailable,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ applicantInformation.value.afterHoursSameForAllDays }}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: mondayAfterEndInput.formattedValue,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.afterHours?.monday.endTime !== applicantInformation.value.afterHours?.monday.endTime }}"
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Time>
    <Time
      id="tuesdayAfterEndInput"
      disabled="{{ !applicantInformation.value.afterHours?.tuesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.afterHours?.tuesday.endTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    tuesday: {\n      isAvailable: applicantInformation.value.afterHours?.tuesday.isAvailable,\n      startTime: applicantInformation.value.afterHours?.tuesday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ applicantInformation.value.afterHoursSameForAllDays }}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: tuesdayAfterEndInput.formattedValue,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.afterHours?.tuesday.endTime !== applicantInformation.value.afterHours?.tuesday.endTime }}"
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Time>
    <Time
      id="wednesdayAfterEndInput"
      disabled="{{ !applicantInformation.value.afterHours?.wednesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.afterHours?.wednesday.endTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    wednesday: {\n      isAvailable: applicantInformation.value.afterHours?.wednesday.isAvailable,\n      startTime: applicantInformation.value.afterHours?.wednesday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ applicantInformation.value.afterHoursSameForAllDays }}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: wednesdayAfterEndInput.formattedValue,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.afterHours?.wednesday.endTime !== applicantInformation.value.afterHours?.wednesday.endTime }}"
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Time>
    <Time
      id="thursdayAfterEndInput"
      disabled="{{ !applicantInformation.value.afterHours?.thursday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.afterHours?.thursday.endTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    thursday: {\n      isAvailable: applicantInformation.value.afterHours?.thursday.isAvailable,\n      startTime: applicantInformation.value.afterHours?.thursday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ applicantInformation.value.afterHoursSameForAllDays }}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: thursdayAfterEndInput.formattedValue,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.afterHours?.thursday.endTime !== applicantInformation.value.afterHours?.thursday.endTime }}"
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Time>
    <Time
      id="fridayAfterEndInput"
      disabled="{{ !applicantInformation.value.afterHours?.friday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.afterHours?.friday.endTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    friday: {\n      isAvailable: applicantInformation.value.afterHours?.friday.isAvailable,\n      startTime: applicantInformation.value.afterHours?.friday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ applicantInformation.value.afterHoursSameForAllDays }}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: fridayAfterEndInput.formattedValue,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.afterHours?.friday.endTime !== applicantInformation.value.afterHours?.friday.endTime }}"
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Time>
    <Time
      id="saturdayAfterEndInput"
      disabled="{{ !applicantInformation.value.afterHours?.saturday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.afterHours?.saturday.endTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    saturday: {\n      isAvailable: applicantInformation.value.afterHours?.saturday.isAvailable,\n      startTime: applicantInformation.value.afterHours?.saturday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ applicantInformation.value.afterHoursSameForAllDays }}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: saturdayAfterEndInput.formattedValue,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.afterHours?.saturday.endTime !== applicantInformation.value.afterHours?.saturday.endTime }}"
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Time>
    <Time
      id="sundayAfterEndInput"
      disabled="{{ !applicantInformation.value.afterHours?.sunday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.afterHours?.sunday.endTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    sunday: {\n      isAvailable: applicantInformation.value.afterHours?.sunday.isAvailable,\n      startTime: applicantInformation.value.afterHours?.sunday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ applicantInformation.value.afterHoursSameForAllDays }}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.afterHours?.monday.startTime,\n      endTime: sundayAfterEndInput.formattedValue,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.afterHours?.sunday.endTime !== applicantInformation.value.afterHours?.sunday.endTime }}"
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Time>
  </View>
</Container>
