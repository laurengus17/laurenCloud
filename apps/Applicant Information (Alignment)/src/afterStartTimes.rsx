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
      disabled="{{ !applicantInformation.value.afterHours?.monday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.afterHours?.monday.startTime }}"
    >
      <Event
        enabled=""
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    monday: {\n      isAvailable: applicantInformation.value.afterHours?.monday.isAvailable,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.monday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: mondayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.sunday.endTime,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.afterHours?.monday.startTime !== applicantInformation.value.afterHours?.monday.startTime }}"
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
      id="tuesdayAfterStartInput"
      disabled="{{ !applicantInformation.value.afterHours?.tuesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.afterHours?.tuesday.startTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    tuesday: {\n      isAvailable: applicantInformation.value.afterHours?.tuesday.isAvailable,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.tuesday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: tuesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.sunday.endTime,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.afterHours?.tuesday.startTime !== applicantInformation.value.afterHours?.tuesday.startTime }}"
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
      id="wednesdayAfterStartInput"
      disabled="{{ !applicantInformation.value.afterHours?.wednesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.afterHours?.wednesday.startTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    wednesday: {\n      isAvailable: applicantInformation.value.afterHours?.wednesday.isAvailable,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.wednesday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: wednesdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.sunday.endTime,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.afterHours?.wednesday.startTime !== applicantInformation.value.afterHours?.wednesday.startTime }}"
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
      id="thursdayAfterStartInput"
      disabled="{{ !applicantInformation.value.afterHours?.thursday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.afterHours?.thursday.startTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    thursday: {\n      isAvailable: applicantInformation.value.afterHours?.thursday.isAvailable,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.thursday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: thursdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.sunday.endTime,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.afterHours?.thursday.startTime !== applicantInformation.value.afterHours?.thursday.startTime }}"
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
      id="fridayAfterStartInput"
      disabled="{{ !applicantInformation.value.afterHours?.friday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.afterHours?.friday.startTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    friday: {\n      isAvailable: applicantInformation.value.afterHours?.friday.isAvailable,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.friday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: fridayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.sunday.endTime,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.afterHours?.friday.startTime !== applicantInformation.value.afterHours?.friday.startTime }}"
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
      id="saturdayAfterStartInput"
      disabled="{{ !applicantInformation.value.afterHours?.saturday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.afterHours?.saturday.startTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    saturday: {\n      isAvailable: applicantInformation.value.afterHours?.saturday.isAvailable,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.saturday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: saturdayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.sunday.endTime,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.afterHours?.saturday.startTime !== applicantInformation.value.afterHours?.saturday.startTime }}"
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
      id="sundayAfterStartInput"
      disabled="{{ !applicantInformation.value.afterHours?.sunday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.afterHours?.sunday.startTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    sunday: {\n      isAvailable: applicantInformation.value.afterHours?.sunday.isAvailable,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.sunday.endTime,\n    }\n  }\n} }}",
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
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    monday: {\n      isAvailable: true,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: sundayAfterStartInput.formattedValue,\n      endTime: applicantInformation.value.afterHours?.sunday.endTime,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.afterHours?.sunday.startTime !== applicantInformation.value.afterHours?.sunday.startTime }}"
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
