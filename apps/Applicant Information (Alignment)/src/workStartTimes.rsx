<Container
  id="workStartTimes"
  disabled="{{applicantInformation.value.available24Hours}}"
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
    <Text id="workStartTimeTitle" value="Start Time" verticalAlign="center" />
    <Time
      id="mondayWorkStartInput"
      disabled="{{ !applicantInformation.value.workHours.monday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.workHours.monday.startTime }}"
    >
      <Event
        enabled=""
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    monday: {\n      isAvailable: applicantInformation.value.workHours.monday.isAvailable,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.monday.endTime,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ applicantInformation.value.workHoursSameForAllDays }}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    monday: {\n      isAvailable: true,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: mondayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.sunday.endTime,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.workHours.monday.startTime !== applicantInformation.value.workHours.monday.startTime }}"
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
      id="tuesdayWorkStartInput"
      disabled="{{ !applicantInformation.value.workHours.tuesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.workHours.tuesday.startTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    tuesday: {\n      isAvailable: applicantInformation.value.workHours.tuesday.isAvailable,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.tuesday.endTime,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ applicantInformation.value.workHoursSameForAllDays }}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    monday: {\n      isAvailable: true,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: tuesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.sunday.endTime,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.workHours.tuesday.startTime !== applicantInformation.value.workHours.tuesday.startTime }}"
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
      id="wednesdayWorkStartInput"
      disabled="{{ !applicantInformation.value.workHours.wednesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.workHours.wednesday.startTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    wednesday: {\n      isAvailable: applicantInformation.value.workHours.wednesday.isAvailable,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.wednesday.endTime,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ applicantInformation.value.workHoursSameForAllDays }}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    monday: {\n      isAvailable: true,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: wednesdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.sunday.endTime,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.workHours.wednesday.startTime !== applicantInformation.value.workHours.wednesday.startTime }}"
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
      id="thursdayWorkStartInput"
      disabled="{{ !applicantInformation.value.workHours.thursday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.workHours.thursday.startTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    thursday: {\n      isAvailable: applicantInformation.value.workHours.thursday.isAvailable,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.thursday.endTime,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ applicantInformation.value.workHoursSameForAllDays }}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    monday: {\n      isAvailable: true,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: thursdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.sunday.endTime,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.workHours.thursday.startTime !== applicantInformation.value.workHours.thursday.startTime }}"
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
      id="fridayWorkStartInput"
      disabled="{{ !applicantInformation.value.workHours.friday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.workHours.friday.startTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    friday: {\n      isAvailable: applicantInformation.value.workHours.friday.isAvailable,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.friday.endTime,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ applicantInformation.value.workHoursSameForAllDays }}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    monday: {\n      isAvailable: true,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: fridayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.sunday.endTime,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.workHours.friday.startTime !== applicantInformation.value.workHours.friday.startTime }}"
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
      id="saturdayWorkStartInput"
      disabled="{{ !applicantInformation.value.workHours.saturday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.workHours.saturday.startTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    saturday: {\n      isAvailable: applicantInformation.value.workHours.saturday.isAvailable,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.saturday.endTime,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ applicantInformation.value.workHoursSameForAllDays }}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    monday: {\n      isAvailable: true,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: saturdayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.sunday.endTime,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.workHours.saturday.startTime !== applicantInformation.value.workHours.saturday.startTime }}"
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
      id="sundayWorkStartInput"
      disabled="{{ !applicantInformation.value.workHours.sunday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.workHours.sunday.startTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    sunday: {\n      isAvailable: applicantInformation.value.workHours.sunday.isAvailable,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.sunday.endTime,\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ applicantInformation.value.workHoursSameForAllDays }}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    monday: {\n      isAvailable: true,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.monday.endTime,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.tuesday.endTime,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.wednesday.endTime,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.thursday.endTime,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.friday.endTime,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.saturday.endTime,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: sundayWorkStartInput.formattedValue,\n      endTime: applicantInformation.value.workHours.sunday.endTime,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.workHours.sunday.startTime !== applicantInformation.value.workHours.sunday.startTime }}"
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
