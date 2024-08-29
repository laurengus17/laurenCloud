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
      disabled="{{ businessInfo.value.businessHoursSameForAllDays }}"
      label="Monday"
      value="{{ businessInfo.value.businessHours.monday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    monday: !businessInfo.value.available24Hours ? {\n      isAvailable: !businessInfo.value.businessHours.monday.isAvailable,\n      startTime: mondayWorkAvailableCheckbox.value ? '06:00' : '',\n      endTime: mondayWorkAvailableCheckbox.value ? '18:00' : '',\n    } : {\n      isAvailable: !businessInfo.value.businessHours.monday.isAvailable,\n      startTime: mondayWorkAvailableCheckbox.value ? '00:00' : '',\n      endTime: mondayWorkAvailableCheckbox.value ? '23:59' : '',\n    }\n  }\n} }}",
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
      id="tuesdayWorkAvailableCheckbox"
      disabled="{{ businessInfo.value.businessHoursSameForAllDays }}"
      label="Tuesday"
      value="{{ businessInfo.value.businessHours.tuesday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    tuesday: !businessInfo.value.available24Hours ? {\n      isAvailable: !businessInfo.value.businessHours.tuesday.isAvailable,\n      startTime: tuesdayWorkAvailableCheckbox.value ? '06:00' : '',\n      endTime: tuesdayWorkAvailableCheckbox.value ? '18:00' : '',\n    } : {\n      isAvailable: !businessInfo.value.businessHours.tuesday.isAvailable,\n      startTime: tuesdayWorkAvailableCheckbox.value ? '00:00' : '',\n      endTime: tuesdayWorkAvailableCheckbox.value ? '23:59' : '',\n    }\n  }\n} }}",
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
      id="wednesdayWorkAvailableCheckbox"
      disabled="{{ businessInfo.value.businessHoursSameForAllDays }}"
      label="Wednesday"
      value="{{ businessInfo.value.businessHours.wednesday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    wednesday: !businessInfo.value.available24Hours ? {\n      isAvailable: !businessInfo.value.businessHours.wednesday.isAvailable,\n      startTime: wednesdayWorkAvailableCheckbox.value ? '06:00' : '',\n      endTime: wednesdayWorkAvailableCheckbox.value ? '18:00' : '',\n    } : {\n      isAvailable: !businessInfo.value.businessHours.wednesday.isAvailable,\n      startTime: wednesdayWorkAvailableCheckbox.value ? '00:00' : '',\n      endTime: wednesdayWorkAvailableCheckbox.value ? '23:59' : '',\n    }\n  }\n} }}",
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
      id="thursdayWorkAvailableCheckbox"
      disabled="{{ businessInfo.value.businessHoursSameForAllDays }}"
      label="Thursday"
      value="{{ businessInfo.value.businessHours.thursday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    thursday: !businessInfo.value.available24Hours ? {\n      isAvailable: !businessInfo.value.businessHours.thursday.isAvailable,\n      startTime: thursdayWorkAvailableCheckbox.value ? '06:00' : '',\n      endTime: thursdayWorkAvailableCheckbox.value ? '18:00' : '',\n    } : {\n      isAvailable: !businessInfo.value.businessHours.thursday.isAvailable,\n      startTime: thursdayWorkAvailableCheckbox.value ? '00:00' : '',\n      endTime: thursdayWorkAvailableCheckbox.value ? '23:59' : '',\n    }\n  }\n} }}",
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
      id="fridayWorkAvailableCheckbox"
      disabled="{{ businessInfo.value.businessHoursSameForAllDays }}"
      label="Friday"
      value="{{ businessInfo.value.businessHours.friday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    friday: !businessInfo.value.available24Hours ? {\n      isAvailable: !businessInfo.value.businessHours.friday.isAvailable,\n      startTime: fridayWorkAvailableCheckbox.value ? '06:00' : '',\n      endTime: fridayWorkAvailableCheckbox.value ? '18:00' : '',\n    } : {\n      isAvailable: !businessInfo.value.businessHours.friday.isAvailable,\n      startTime: fridayWorkAvailableCheckbox.value ? '00:00' : '',\n      endTime: fridayWorkAvailableCheckbox.value ? '23:59' : '',\n    }\n  }\n} }}",
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
      id="saturdayWorkAvailableCheckbox"
      disabled="{{ businessInfo.value.businessHoursSameForAllDays }}"
      label="Saturday"
      value="{{ businessInfo.value.businessHours.saturday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    saturday: !businessInfo.value.available24Hours ? {\n      isAvailable: !businessInfo.value.businessHours.saturday.isAvailable,\n      startTime: saturdayWorkAvailableCheckbox.value ? '06:00' : '',\n      endTime: saturdayWorkAvailableCheckbox.value ? '18:00' : '',\n    } : {\n      isAvailable: !businessInfo.value.businessHours.saturday.isAvailable,\n      startTime: saturdayWorkAvailableCheckbox.value ? '00:00' : '',\n      endTime: saturdayWorkAvailableCheckbox.value ? '23:59' : '',\n    }\n  }\n} }}",
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
      id="sundayWorkAvailableCheckbox"
      disabled="{{ businessInfo.value.businessHoursSameForAllDays }}"
      label="Sunday"
      value="{{ businessInfo.value.businessHours.sunday.isAvailable }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessHours: {\n    ...businessInfo.value.businessHours,\n    sunday: !businessInfo.value.available24Hours ? {\n      isAvailable: !businessInfo.value.businessHours.sunday.isAvailable,\n      startTime: sundayWorkAvailableCheckbox.value ? '06:00' : '',\n      endTime: sundayWorkAvailableCheckbox.value ? '18:00' : '',\n    } : {\n      isAvailable: !businessInfo.value.businessHours.sunday.isAvailable,\n      startTime: sundayWorkAvailableCheckbox.value ? '00:00' : '',\n      endTime: sundayWorkAvailableCheckbox.value ? '23:59' : '',\n    }\n  }\n} }}",
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
