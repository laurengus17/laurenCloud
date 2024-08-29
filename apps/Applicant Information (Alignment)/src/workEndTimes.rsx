<Container
  id="workEndTimes"
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
    <Text id="workEndTimeTitle" value="End Time" verticalAlign="center" />
    <Time
      id="mondayWorkEndInput"
      disabled="{{ !applicantInformation.value.workHours.monday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.workHours.monday.endTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    monday: {\n      isAvailable: applicantInformation.value.workHours.monday.isAvailable,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    }\n  }\n} }}",
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
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    monday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: mondayWorkEndInput.formattedValue,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.workHours.monday.endTime !== applicantInformation.value.workHours.monday.endTime }}"
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
      id="tuesdayWorkEndInput"
      disabled="{{ !applicantInformation.value.workHours.tuesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.workHours.tuesday.endTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    tuesday: {\n      isAvailable: applicantInformation.value.workHours.tuesday.isAvailable,\n      startTime: applicantInformation.value.workHours.tuesday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    }\n  }\n} }}",
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
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    monday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: tuesdayWorkEndInput.formattedValue,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.workHours.tuesday.endTime !== applicantInformation.value.workHours.tuesday.endTime }}"
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
      id="wednesdayWorkEndInput"
      disabled="{{ !applicantInformation.value.workHours.wednesday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.workHours.wednesday.endTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    wednesday: {\n      isAvailable: applicantInformation.value.workHours.wednesday.isAvailable,\n      startTime: applicantInformation.value.workHours.wednesday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    }\n  }\n} }}",
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
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    monday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: wednesdayWorkEndInput.formattedValue,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.workHours.wednesday.endTime !== applicantInformation.value.workHours.wednesday.endTime }}"
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
      id="thursdayWorkEndInput"
      disabled="{{ !applicantInformation.value.workHours.thursday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.workHours.thursday.endTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    thursday: {\n      isAvailable: applicantInformation.value.workHours.thursday.isAvailable,\n      startTime: applicantInformation.value.workHours.thursday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    }\n  }\n} }}",
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
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    monday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: thursdayWorkEndInput.formattedValue,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.workHours.thursday.endTime !== applicantInformation.value.workHours.thursday.endTime }}"
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
      id="fridayWorkEndInput"
      disabled="{{ !applicantInformation.value.workHours.friday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.workHours.friday.endTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    friday: {\n      isAvailable: applicantInformation.value.workHours.friday.isAvailable,\n      startTime: applicantInformation.value.workHours.friday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    }\n  }\n} }}",
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
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    monday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: fridayWorkEndInput.formattedValue,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.workHours.friday.endTime !== applicantInformation.value.workHours.friday.endTime }}"
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
      id="saturdayWorkEndInput"
      disabled="{{ !applicantInformation.value.workHours.saturday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.workHours.saturday.endTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    saturday: {\n      isAvailable: applicantInformation.value.workHours.saturday.isAvailable,\n      startTime: applicantInformation.value.workHours.saturday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    }\n  }\n} }}",
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
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    monday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: saturdayWorkEndInput.formattedValue,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.workHours.saturday.endTime !== applicantInformation.value.workHours.saturday.endTime }}"
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
      id="sundayWorkEndInput"
      disabled="{{ !applicantInformation.value.workHours.sunday.isAvailable }}"
      iconBefore="bold/interface-time-clock-circle-alternate"
      label=""
      labelPosition="top"
      minuteStep={15}
      timePlaceholder="--:--"
      value="{{ applicantInformation.value.workHours.sunday.endTime }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    sunday: {\n      isAvailable: applicantInformation.value.workHours.sunday.isAvailable,\n      startTime: applicantInformation.value.workHours.sunday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    }\n  }\n} }}",
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
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    monday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    },\n    tuesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    },\n    wednesday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    },\n    thursday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    },\n    friday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    },\n    saturday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    },\n    sunday: {\n      isAvailable: true,\n      startTime: applicantInformation.value.workHours.monday.startTime,\n      endTime: sundayWorkEndInput.formattedValue,\n    },\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.workHours.sunday.endTime !== applicantInformation.value.workHours.sunday.endTime }}"
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
