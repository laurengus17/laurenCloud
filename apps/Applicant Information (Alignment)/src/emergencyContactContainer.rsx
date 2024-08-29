<Container
  id="emergencyContactContainer"
  disabled="{{ !isEditing.value }}"
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
      id="containerTitle142"
      marginType="normal"
      value="#### {{ item }}"
      verticalAlign="center"
    />
  </Header>
  <View id="c9d19" viewKey="View 1">
    <TextInput
      id="emergencyContactFirstnameInput"
      customValidation={
        "{{ (/[0-9]/.test(emergencyContactFirstnameInput.value) || /[$!@#%^&*()_+=[\\]{}|;:\",./<>?~`-]/.test(emergencyContactFirstnameInput.value)) ? 'No numbers or special characters allowed' : null }}"
      }
      disabled=""
      label="First Name"
      labelPosition="top"
      marginType="normal"
      minLength="1"
      placeholder="Enter value"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{applicantInformation.value.emergencyContacts[i].firstName}}"
    >
      <Event
        enabled=""
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  emergencyContacts: [\n    ...applicantInformation.value.emergencyContacts?.slice(0, i),\n    {\n      id: applicantInformation.value.emergencyContacts[i]?.id,\n      firstName: emergencyContactFirstnameInput.value,\n      lastName: applicantInformation.value.emergencyContacts[i]?.lastName,\n      email: applicantInformation.value.emergencyContacts[i]?.email,\n      phone: applicantInformation.value.emergencyContacts[i]?.phone,\n      relation: applicantInformation.value.emergencyContacts[i]?.relation,\n    },\n    ...applicantInformation.value.emergencyContacts?.slice(i+1),\n  ],\n}  }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.emergencyContacts[i].firstName !== applicantInformation.value.emergencyContacts[i].firstName }}"
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <TextInput
      id="emergencyContactLastnameInput"
      customValidation={
        "{{ (/[0-9]/.test(emergencyContactLastnameInput.value) || /[$!@#%^&*()_+=[\\]{}|;:\",./<>?~`-]/.test(emergencyContactLastnameInput.value)) ? 'No numbers or special characters allowed' : null }}"
      }
      disabled=""
      label="Last Name"
      labelPosition="top"
      marginType="normal"
      minLength="1"
      placeholder="Enter value"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{applicantInformation.value.emergencyContacts[i].lastName}}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  emergencyContacts: [\n    ...applicantInformation.value.emergencyContacts?.slice(0, i),\n    {\n      id: applicantInformation.value.emergencyContacts[i]?.id,\n      firstName: applicantInformation.value.emergencyContacts[i]?.firstName,\n      lastName: emergencyContactLastnameInput.value,\n      email: applicantInformation.value.emergencyContacts[i]?.email,\n      phone: applicantInformation.value.emergencyContacts[i]?.phone,\n      relation: applicantInformation.value.emergencyContacts[i]?.relation,\n    },\n    ...applicantInformation.value.emergencyContacts?.slice(i+1),\n  ],\n}  }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.emergencyContacts[i].lastName !== applicantInformation.value.emergencyContacts[i].lastName }}"
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <PhoneNumberInput
      id="emergencyContactPhoneInput"
      _lockSelectedCountry={true}
      disabled=""
      label="Phone"
      labelPosition="top"
      lockedCountryCode="US"
      style={{ ordered: [{ background: "canvas" }] }}
      value="1{{applicantInformation.value.emergencyContacts[i].phone}}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  emergencyContacts: [\n    ...applicantInformation.value.emergencyContacts?.slice(0, i),\n    {\n      id: applicantInformation.value.emergencyContacts[i]?.id,\n      firstName: applicantInformation.value.emergencyContacts[i]?.firstName,\n      lastName: applicantInformation.value.emergencyContacts[i]?.lastName,\n      email: applicantInformation.value.emergencyContacts[i]?.email,\n      phone: emergencyContactPhoneInput.value.substring(2),\n      relation: applicantInformation.value.emergencyContacts[i]?.relation,\n    },\n    ...applicantInformation.value.emergencyContacts?.slice(i+1),\n  ],\n}  }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{applicantInformation.value.emergencyContacts[i].phone !== emergencyContactPhoneInput.value.slice(1) && !applicantInfoForm.invalid && originalFormData.value.emergencyContacts[i].phone !== applicantInformation.value.emergencyContacts[i].phone }}"
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs=""
        waitType="debounce"
      />
    </PhoneNumberInput>
    <TextInput
      id="emergencyContactEmailInput"
      disabled=""
      iconBefore="bold/mail-send-envelope"
      label="Email"
      labelPosition="top"
      marginType="normal"
      patternType="email"
      placeholder="you@example.com"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{applicantInformation.value.emergencyContacts[i].email}}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  emergencyContacts: [\n    ...applicantInformation.value.emergencyContacts?.slice(0, i),\n    {\n      id: applicantInformation.value.emergencyContacts[i]?.id,\n      firstName: applicantInformation.value.emergencyContacts[i]?.firstName,\n      lastName: applicantInformation.value.emergencyContacts[i]?.lastName,\n      email: emergencyContactEmailInput.value,\n      phone: applicantInformation.value.emergencyContacts[i]?.phone,\n      relation: applicantInformation.value.emergencyContacts[i]?.relation,\n    },\n    ...applicantInformation.value.emergencyContacts?.slice(i+1),\n  ],\n}  }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.emergencyContacts[i].email !== applicantInformation.value.emergencyContacts[i].email }}"
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </TextInput>
    <Select
      id="emergencyContactRelationSelect"
      data="{{ contactRelations.value }}"
      disabled=""
      emptyMessage="No options"
      label="Relation"
      labelPosition="top"
      labels="{{ item.label }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{applicantInformation.value.emergencyContacts[i].relation}}"
      values="{{ item.value }}"
    >
      <Option id="b0d96" value="Child" />
      <Option id="cf10d" value="Friend" />
      <Option id="61bdd" value="Parent" />
      <Option id="5e1ad" disabled={false} hidden={false} value="Relative" />
      <Option id="55852" disabled={false} hidden={false} value="Sibling" />
      <Option id="e6c8e" disabled={false} hidden={false} value="Spouse" />
      <Option id="3cd83" disabled={false} hidden={false} value="Other" />
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...applicantInformation.value,\n  emergencyContacts: [\n    ...applicantInformation.value.emergencyContacts?.slice(0, i),\n    {\n      id: applicantInformation.value.emergencyContacts[i]?.id,\n      firstName: applicantInformation.value.emergencyContacts[i]?.firstName,\n      lastName: applicantInformation.value.emergencyContacts[i]?.lastName,\n      email: applicantInformation.value.emergencyContacts[i]?.email,\n      phone: applicantInformation.value.emergencyContacts[i]?.phone,\n      relation: emergencyContactRelationSelect.value,\n    },\n    ...applicantInformation.value.emergencyContacts?.slice(i+1),\n  ],\n}  }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.emergencyContacts[i].relation !== applicantInformation.value.emergencyContacts[i].relation }}"
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
  </View>
</Container>
