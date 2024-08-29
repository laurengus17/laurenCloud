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
      disabled="{{ businessInfo.value.afterHoursSameForAllDays }}"
      label="Monday"
      value="{{ businessInfo.value.afterHours?.monday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    monday: {\n      isAvailable: !businessInfo.value.afterHours?.monday.isAvailable,\n      startTime: mondayAfterAvailableCheckbox.value ? '18:00' : '',\n      endTime: mondayAfterAvailableCheckbox.value ? '06:00' : '',\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
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
    </Checkbox>
    <Checkbox
      id="tuesdayAfterAvailableCheckbox"
      disabled="{{ businessInfo.value.afterHoursSameForAllDays }}"
      label="Tuesday"
      value="{{ businessInfo.value.afterHours?.tuesday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    tuesday: {\n      isAvailable: !businessInfo.value.afterHours?.tuesday.isAvailable,\n      startTime: tuesdayAfterAvailableCheckbox.value ? '18:00' : '',\n      endTime: tuesdayAfterAvailableCheckbox.value ? '06:00' : '',\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
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
    </Checkbox>
    <Checkbox
      id="wednesdayAfterAvailableCheckbox"
      disabled="{{ businessInfo.value.afterHoursSameForAllDays }}"
      label="Wednesday"
      value="{{ businessInfo.value.afterHours?.wednesday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    wednesday: {\n      isAvailable: !businessInfo.value.afterHours?.wednesday.isAvailable,\n      startTime: wednesdayAfterAvailableCheckbox.value ? '18:00' : '',\n      endTime: wednesdayAfterAvailableCheckbox.value ? '06:00' : '',\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
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
    </Checkbox>
    <Checkbox
      id="thursdayAfterAvailableCheckbox"
      disabled="{{ businessInfo.value.afterHoursSameForAllDays }}"
      label="Thursday"
      value="{{ businessInfo.value.afterHours?.thursday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    thursday: {\n      isAvailable: !businessInfo.value.afterHours?.thursday.isAvailable,\n      startTime: thursdayAfterAvailableCheckbox.value ? '18:00' : '',\n      endTime: thursdayAfterAvailableCheckbox.value ? '06:00' : '',\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
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
    </Checkbox>
    <Checkbox
      id="fridayAfterAvailableCheckbox"
      disabled="{{ businessInfo.value.afterHoursSameForAllDays }}"
      label="Friday"
      value="{{ businessInfo.value.afterHours?.friday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    friday: {\n      isAvailable: !businessInfo.value.afterHours?.friday.isAvailable,\n      startTime: fridayAfterAvailableCheckbox.value ? '18:00' : '',\n      endTime: fridayAfterAvailableCheckbox.value ? '06:00' : '',\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
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
    </Checkbox>
    <Checkbox
      id="saturdayAfterAvailableCheckbox"
      disabled="{{ businessInfo.value.afterHoursSameForAllDays }}"
      label="Saturday"
      value="{{ businessInfo.value.afterHours?.saturday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    saturday: {\n      isAvailable: !businessInfo.value.afterHours?.saturday.isAvailable,\n      startTime: saturdayAfterAvailableCheckbox.value ? '18:00' : '',\n      endTime: saturdayAfterAvailableCheckbox.value ? '06:00' : '',\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
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
    </Checkbox>
    <Checkbox
      id="sundayAfterAvailableCheckbox"
      disabled="{{ businessInfo.value.afterHoursSameForAllDays }}"
      label="Sunday"
      value="{{ businessInfo.value.afterHours?.sunday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHours: {\n    ...businessInfo.value.afterHours,\n    sunday: {\n      isAvailable: !businessInfo.value.afterHours?.sunday.isAvailable,\n      startTime: sundayAfterAvailableCheckbox.value ? '18:00' : '',\n      endTime: sundayAfterAvailableCheckbox.value ? '06:00' : '',\n    }\n  }\n} }}",
            },
          ],
        }}
        pluginId="businessInfo"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
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
    </Checkbox>
  </View>
</Container>
