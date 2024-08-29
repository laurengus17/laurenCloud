<Container
  id="afterDaysAvailability"
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
    <Text id="workDayTitle2" value="Day" verticalAlign="center" />
    <Checkbox
      id="mondayAfterAvailableCheckbox"
      disabled="{{ applicantInformation.value.afterHoursSameForAllDays }}"
      label="Monday"
      value="{{ applicantInformation.value.afterHours?.monday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    monday: {\n      isAvailable: !applicantInformation.value.afterHours?.monday.isAvailable,\n      startTime: mondayAfterAvailableCheckbox.value ? '18:00' : '',\n      endTime: mondayAfterAvailableCheckbox.value ? '06:00' : '',\n    }\n  }\n} }}",
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
      id="tuesdayAfterAvailableCheckbox"
      disabled="{{ applicantInformation.value.afterHoursSameForAllDays }}"
      label="Tuesday"
      value="{{ applicantInformation.value.afterHours?.tuesday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    tuesday: {\n      isAvailable: !applicantInformation.value.afterHours?.tuesday.isAvailable,\n      startTime: tuesdayAfterAvailableCheckbox.value ? '18:00' : '',\n      endTime: tuesdayAfterAvailableCheckbox.value ? '06:00' : '',\n    }\n  }\n} }}",
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
      id="wednesdayAfterAvailableCheckbox"
      disabled="{{ applicantInformation.value.afterHoursSameForAllDays }}"
      label="Wednesday"
      value="{{ applicantInformation.value.afterHours?.wednesday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    wednesday: {\n      isAvailable: !applicantInformation.value.afterHours?.wednesday.isAvailable,\n      startTime: wednesdayAfterAvailableCheckbox.value ? '18:00' : '',\n      endTime: wednesdayAfterAvailableCheckbox.value ? '06:00' : '',\n    }\n  }\n} }}",
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
      id="thursdayAfterAvailableCheckbox"
      disabled="{{ applicantInformation.value.afterHoursSameForAllDays }}"
      label="Thursday"
      value="{{ applicantInformation.value.afterHours?.thursday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    thursday: {\n      isAvailable: !applicantInformation.value.afterHours?.thursday.isAvailable,\n      startTime: thursdayAfterAvailableCheckbox.value ? '18:00' : '',\n      endTime: thursdayAfterAvailableCheckbox.value ? '06:00' : '',\n    }\n  }\n} }}",
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
      id="fridayAfterAvailableCheckbox"
      disabled="{{ applicantInformation.value.afterHoursSameForAllDays }}"
      label="Friday"
      value="{{ applicantInformation.value.afterHours?.friday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    friday: {\n      isAvailable: !applicantInformation.value.afterHours?.friday.isAvailable,\n      startTime: fridayAfterAvailableCheckbox.value ? '18:00' : '',\n      endTime: fridayAfterAvailableCheckbox.value ? '06:00' : '',\n    }\n  }\n} }}",
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
      id="saturdayAfterAvailableCheckbox"
      disabled="{{ applicantInformation.value.afterHoursSameForAllDays }}"
      label="Saturday"
      value="{{ applicantInformation.value.afterHours?.saturday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    saturday: {\n      isAvailable: !applicantInformation.value.afterHours?.saturday.isAvailable,\n      startTime: saturdayAfterAvailableCheckbox.value ? '18:00' : '',\n      endTime: saturdayAfterAvailableCheckbox.value ? '06:00' : '',\n    }\n  }\n} }}",
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
      id="sundayAfterAvailableCheckbox"
      disabled="{{ applicantInformation.value.afterHoursSameForAllDays }}"
      label="Sunday"
      value="{{ applicantInformation.value.afterHours?.sunday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  afterHours: {\n    ...applicantInformation.value.afterHours,\n    sunday: {\n      isAvailable: !applicantInformation.value.afterHours?.sunday.isAvailable,\n      startTime: sundayAfterAvailableCheckbox.value ? '18:00' : '',\n      endTime: sundayAfterAvailableCheckbox.value ? '06:00' : '',\n    }\n  }\n} }}",
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
