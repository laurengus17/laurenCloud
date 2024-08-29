<Container
  id="emergencyContactContainer2"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  marginType="none"
  padding="0"
  showBody={true}
  style={{
    ordered: [
      { background: "rgba(255, 255, 255, 0)" },
      { border: "rgba(0, 0, 0, 0)" },
    ],
  }}
>
  <Header>
    <Text
      id="containerTitle164"
      marginType="normal"
      value="#### {{ item }}"
      verticalAlign="center"
    />
  </Header>
  <View id="c9d19" viewKey="View 1">
    <TextInput
      id="afterHoursContactFirstnameInput"
      label="First Name"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{businessInfo.value.afterHoursContacts[i].firstname}}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHoursContacts: [\n    ...businessInfo.value.afterHoursContacts.slice(0, i),\n    {\n      ...businessInfo.value.afterHoursContacts[i],\n      firstName: afterHoursContactFirstnameInput.value,\n    },\n    ...businessInfo.value.afterHoursContacts.slice(i + 1)\n  ]\n} }}",
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
        params={{ ordered: [] }}
        pluginId="updateBusinessInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="afterHoursContactLastnameInput"
      label="Last Name"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{businessInfo.value.afterHoursContacts[i].lastname}}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHoursContacts: [\n    ...businessInfo.value.afterHoursContacts.slice(0, i),\n    {\n      ...businessInfo.value.afterHoursContacts[i],\n      lastName: afterHoursContactLastnameInput.value,\n    },\n    ...businessInfo.value.afterHoursContacts.slice(i + 1)\n  ]\n} }}",
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
        params={{ ordered: [] }}
        pluginId="updateBusinessInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="afterHoursContactEmailInput"
      iconBefore="bold/mail-send-envelope"
      label="Email"
      labelPosition="top"
      marginType="normal"
      patternType="email"
      placeholder="you@example.com"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{businessInfo.value.afterHoursContacts[i].emails[0].value}}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n    afterHoursContacts: [\n    ...businessInfo.value.afterHoursContacts.slice(0, i),\n    {\n      ...businessInfo.value.afterHoursContacts[i],\n      emails: [\n        {\n          ...businessInfo.value.afterHoursContacts[i].emails[0],\n          value: afterHoursContactEmailInput.value,\n        },\n        ...businessInfo.value.afterHoursContacts[i].emails.slice(1),\n      ],\n    },\n    ...businessInfo.value.afterHoursContacts.slice(i + 1)\n  ]\n} }}",
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
        params={{ ordered: [] }}
        pluginId="updateBusinessInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <PhoneNumberInput
      id="afterHoursContactPhoneInput"
      _lockSelectedCountry={true}
      label="Phone"
      labelPosition="top"
      lockedCountryCode="US"
      marginType="normal"
      style={{ ordered: [{ background: "canvas" }] }}
      value="1{{businessInfo.value.afterHoursContacts[i].phones[0].value}}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n    afterHoursContacts: [\n    ...businessInfo.value.afterHoursContacts.slice(0, i),\n    {\n      ...businessInfo.value.afterHoursContacts[i],\n      phones: [\n        {\n          ...businessInfo.value.afterHoursContacts[i].phones[0],\n          value: afterHoursContactPhoneInput.value.substring(2),\n        },\n        ...businessInfo.value.afterHoursContacts[i].phones.slice(1),\n      ],\n    },\n    ...businessInfo.value.afterHoursContacts.slice(i + 1)\n  ]\n} }}",
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
        params={{ ordered: [] }}
        pluginId="updateBusinessInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </PhoneNumberInput>
    <TextInput
      id="afterHoursContactTitleInput"
      label="Title"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{businessInfo.value.afterHoursContacts[i].title}}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  afterHoursContacts: [\n    ...businessInfo.value.afterHoursContacts.slice(0, i),\n    {\n      ...businessInfo.value.afterHoursContacts[i],\n      title: afterHoursContactTitleInput.value,\n    },\n    ...businessInfo.value.afterHoursContacts.slice(i + 1)\n  ]\n} }}",
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
        params={{ ordered: [] }}
        pluginId="updateBusinessInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
  </View>
</Container>
