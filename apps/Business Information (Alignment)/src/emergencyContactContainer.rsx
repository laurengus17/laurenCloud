<Container
  id="emergencyContactContainer"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
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
      id="containerTitle158"
      marginType="normal"
      value="#### {{ item }}"
      verticalAlign="center"
    />
  </Header>
  <View id="c9d19" viewKey="View 1">
    <TextInput
      id="adminContactFirstnameInput"
      label="First Name"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{businessInfo.value.administrativeContacts[i].firstName}}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  administrativeContacts: [\n    ...businessInfo.value.administrativeContacts.slice(0, i),\n    {\n      ...businessInfo.value.administrativeContacts[i],\n      firstName: adminContactFirstnameInput.value,\n    },\n    ...businessInfo.value.administrativeContacts.slice(i + 1)\n  ]\n} }}",
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
      id="adminContactLastnameInput"
      label="Last Name"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{businessInfo.value.administrativeContacts[i].lastName}}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n    administrativeContacts: [\n    ...businessInfo.value.administrativeContacts.slice(0, i),\n    {\n      ...businessInfo.value.administrativeContacts[i],\n      lastName: adminContactLastnameInput.value,\n    },\n    ...businessInfo.value.administrativeContacts.slice(i + 1)\n  ]\n} }}",
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
      id="adminContactEmailInput"
      iconBefore="bold/mail-send-envelope"
      label="Email"
      labelPosition="top"
      marginType="normal"
      patternType="email"
      placeholder="you@example.com"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{businessInfo.value.administrativeContacts[i].emails[0].value}}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n    administrativeContacts: [\n    ...businessInfo.value.administrativeContacts.slice(0, i),\n    {\n      ...businessInfo.value.administrativeContacts[i],\n      emails: [\n        {\n          ...businessInfo.value.administrativeContacts[i].emails[0],\n          value: adminContactEmailInput.value,\n        },\n        ...businessInfo.value.administrativeContacts[i].emails.slice(1),\n      ],\n    },\n    ...businessInfo.value.administrativeContacts.slice(i + 1)\n  ]\n} }}",
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
      id="adminContactPhoneInput"
      _lockSelectedCountry={true}
      label="Phone"
      labelPosition="top"
      lockedCountryCode="US"
      marginType="normal"
      style={{ ordered: [{ background: "canvas" }] }}
      value="1{{businessInfo.value.administrativeContacts[i].phones[0].value}}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ \n{\n  ...businessInfo.value,\n    administrativeContacts: [\n    ...businessInfo.value.administrativeContacts.slice(0, i),\n    {\n      ...businessInfo.value.administrativeContacts[i],\n      phones: [\n        {\n          ...businessInfo.value.administrativeContacts[i].phones[0],\n          value: adminContactPhoneInput.value.substring(2),\n        },\n        ...businessInfo.value.administrativeContacts[i].phones.slice(1),\n      ],\n    },\n    ...businessInfo.value.administrativeContacts.slice(i + 1)\n  ]\n} \n}}",
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
      id="adminContactTitleInput"
      label="Title"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{businessInfo.value.administrativeContacts[i].title}}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  administrativeContacts: [\n    ...businessInfo.value.administrativeContacts.slice(0, i),\n    {\n      ...businessInfo.value.administrativeContacts[i],\n      title: adminContactTitleInput.value,\n    },\n    ...businessInfo.value.administrativeContacts.slice(i + 1)\n  ]\n} }}",
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
