<Container
  id="workDaysAvailability"
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
    <Text id="workDayTitle" value="Day" verticalAlign="center" />
    <Checkbox
      id="mondayWorkAvailableCheckbox"
      disabled="{{ applicantInformation.value.workHoursSameForAllDays  }}"
      label="Monday"
      value="{{ applicantInformation.value.workHours.monday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    monday: !applicantInformation.value.available24Hours ? {\n      isAvailable: !applicantInformation.value.workHours.monday.isAvailable,\n      startTime: mondayWorkAvailableCheckbox.value ? '06:00' : '',\n      endTime: mondayWorkAvailableCheckbox.value ? '18:00' : '',\n    } : {\n      isAvailable: !applicantInformation.value.workHours.monday.isAvailable,\n      startTime: mondayWorkAvailableCheckbox.value ? '00:00' : '',\n      endTime: mondayWorkAvailableCheckbox.value ? '23:59' : '',\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid }}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
    <Checkbox
      id="tuesdayWorkAvailableCheckbox"
      disabled="{{ applicantInformation.value.workHoursSameForAllDays }}"
      label="Tuesday"
      value="{{ applicantInformation.value.workHours.tuesday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    tuesday:  !applicantInformation.value.available24Hours ? {\n      isAvailable: !applicantInformation.value.workHours.tuesday.isAvailable,\n      startTime: tuesdayWorkAvailableCheckbox.value ? '06:00' : '',\n      endTime: tuesdayWorkAvailableCheckbox.value ? '18:00' : '',\n    } : {\n      isAvailable: !applicantInformation.value.workHours.tuesday.isAvailable,\n      startTime: tuesdayWorkAvailableCheckbox.value ? '00:00' : '',\n      endTime: tuesdayWorkAvailableCheckbox.value ? '23:59' : '',\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid }}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
    <Checkbox
      id="wednesdayWorkAvailableCheckbox"
      disabled="{{ applicantInformation.value.workHoursSameForAllDays }}"
      label="Wednesday"
      value="{{ applicantInformation.value.workHours.wednesday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    wednesday:  !applicantInformation.value.available24Hours ? {\n      isAvailable: !applicantInformation.value.workHours.wednesday.isAvailable,\n      startTime: wednesdayWorkAvailableCheckbox.value ? '06:00' : '',\n      endTime: wednesdayWorkAvailableCheckbox.value ? '18:00' : '',\n    } : {\n      isAvailable: !applicantInformation.value.workHours.wednesday.isAvailable,\n      startTime: wednesdayWorkAvailableCheckbox.value ? '00:00' : '',\n      endTime: wednesdayWorkAvailableCheckbox.value ? '23:59' : '',\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid }}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
    <Checkbox
      id="thursdayWorkAvailableCheckbox"
      disabled="{{ applicantInformation.value.workHoursSameForAllDays }}"
      label="Thursday"
      value="{{ applicantInformation.value.workHours.thursday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    thursday:  !applicantInformation.value.available24Hours ? {\n      isAvailable: !applicantInformation.value.workHours.thursday.isAvailable,\n      startTime: thursdayWorkAvailableCheckbox.value ? '06:00' : '',\n      endTime: thursdayWorkAvailableCheckbox.value ? '18:00' : '',\n    } : {\n      isAvailable: !applicantInformation.value.workHours.thursday.isAvailable,\n      startTime: thursdayWorkAvailableCheckbox.value ? '00:00' : '',\n      endTime: thursdayWorkAvailableCheckbox.value ? '23:59' : '',\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid }}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
    <Checkbox
      id="fridayWorkAvailableCheckbox"
      disabled="{{ applicantInformation.value.workHoursSameForAllDays }}"
      label="Friday"
      value="{{ applicantInformation.value.workHours.friday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    friday:  !applicantInformation.value.available24Hours ? {\n      isAvailable: !applicantInformation.value.workHours.friday.isAvailable,\n      startTime: fridayWorkAvailableCheckbox.value ? '06:00' : '',\n      endTime: fridayWorkAvailableCheckbox.value ? '18:00' : '',\n    } : {\n      isAvailable: !applicantInformation.value.workHours.friday.isAvailable,\n      startTime: fridayWorkAvailableCheckbox.value ? '00:00' : '',\n      endTime: fridayWorkAvailableCheckbox.value ? '23:59' : '',\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid }}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
    <Checkbox
      id="saturdayWorkAvailableCheckbox"
      disabled="{{ applicantInformation.value.workHoursSameForAllDays }}"
      label="Saturday"
      value="{{ applicantInformation.value.workHours.saturday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    saturday:  !applicantInformation.value.available24Hours ? {\n      isAvailable: !applicantInformation.value.workHours.saturday.isAvailable,\n      startTime: saturdayWorkAvailableCheckbox.value ? '06:00' : '',\n      endTime: saturdayWorkAvailableCheckbox.value ? '18:00' : '',\n    } : {\n      isAvailable: !applicantInformation.value.workHours.saturday.isAvailable,\n      startTime: saturdayWorkAvailableCheckbox.value ? '00:00' : '',\n      endTime: saturdayWorkAvailableCheckbox.value ? '23:59' : '',\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid }}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
    <Checkbox
      id="sundayWorkAvailableCheckbox"
      disabled="{{ applicantInformation.value.workHoursSameForAllDays }}"
      label="Sunday"
      value="{{ applicantInformation.value.workHours.sunday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  workHours: {\n    ...applicantInformation.value.workHours,\n    sunday:  !applicantInformation.value.available24Hours ? {\n      isAvailable: !applicantInformation.value.workHours.sunday.isAvailable,\n      startTime: sundayWorkAvailableCheckbox.value ? '06:00' : '',\n      endTime: sundayWorkAvailableCheckbox.value ? '18:00' : '',\n    } : {\n      isAvailable: !applicantInformation.value.workHours.sunday.isAvailable,\n      startTime: sundayWorkAvailableCheckbox.value ? '00:00' : '',\n      endTime: tuesdayWorkAvailableCheckbox.value ? '23:59' : '',\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid }}"
        event="change"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Checkbox>
  </View>
</Container>
