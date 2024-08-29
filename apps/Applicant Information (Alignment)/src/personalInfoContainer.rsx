<Container
  id="personalInfoContainer"
  disabled="{{ !isEditing.value }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  margin="0px"
  padding="0px"
  showBody={true}
  showBorder={false}
  style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
>
  <View id="b9482" viewKey="View 1">
    <TextInput
      id="firstNameInput"
      autoCapitalize="words"
      customValidation={
        "{{ (/[0-9]/.test(firstNameInput.value) || /[$!@#%^&*()_+=[\\]{}|;:\",./<>?~`]/.test(firstNameInput.value) || /^-/.test(firstNameInput.value)) ? 'No numbers or special characters allowed' : null }}"
      }
      disabled=""
      label="First Name"
      labelPosition="top"
      marginType="normal"
      required={true}
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{applicantInformation.value.firstname}}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {...applicantInformation.value, firstname: firstNameInput.value } }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.firstname !== applicantInformation.value.firstname }}"
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
      id="lastNameInput"
      autoCapitalize="words"
      customValidation={
        "{{ (/[0-9]/.test(lastNameInput.value) || /[$!@#%^&*()_+=[\\]{}|;:\",./<>?~`]/.test(lastNameInput.value) || /^-/.test(lastNameInput.value)) ? 'No numbers or special characters allowed' : null }}"
      }
      disabled=""
      label="Last Name"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      required={true}
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{applicantInformation.value.lastname}}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {...applicantInformation.value, lastname: lastNameInput.value } }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.lastname !== applicantInformation.value.lastname }}"
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
      id="paidExperienceSelect"
      data="{{ jobExperienceList.value }}"
      disabled=""
      emptyMessage="No options"
      label="Years of Experience"
      labelPosition="top"
      labels="{{ item.label }}"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{applicantInformation.value.paidExperience}}"
      values="{{ item.value }}"
    >
      <Option id="d4bcd" value="Option 1" />
      <Option id="6c1c5" value="Option 2" />
      <Option id="b809f" value="Option 3" />
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {...applicantInformation.value, paidExperience: paidExperienceSelect.value} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.paidExperience !== applicantInformation.value.paidExperience }}"
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Date
      id="dobInput"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled=""
      hidden="true"
      iconBefore="bold/interface-calendar"
      label="Date of Birth"
      labelPosition="top"
      marginType="normal"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{applicantInformation.value.dob}}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {...applicantInformation.value, dob: dobInput.value} }}",
            },
          ],
        }}
        pluginId="applicantInformation"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{ !applicantInfoForm.invalid && originalFormData.value.dob !== applicantInformation.value.dob }}"
        event="blur"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateApplicantInfo"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Date>
    <ListViewBeta
      id="emailListView"
      computeAllInstanceValues={false}
      data=" {{applicantInformation.value.emails}}"
      heightType="auto"
      itemWidth="200px"
      margin="0"
      marginType="none"
      numColumns={3}
      padding="0"
    >
      <Container
        id="emailContainer"
        disabled="{{ i === 0 }}"
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
            id="containerTitle141"
            marginType="normal"
            value="#### {{ item }}"
            verticalAlign="center"
          />
        </Header>
        <View id="c9d19" viewKey="View 1">
          <Select
            id="emailTypeSelect"
            captionByIndex=""
            colorByIndex=""
            data="{{ emailTypes.value }}"
            disabled="{{ i === 0 }}"
            disabledByIndex=""
            emptyMessage="No options"
            fallbackTextByIndex=""
            hidden=""
            hiddenByIndex=""
            iconByIndex=""
            imageByIndex=""
            label="Email"
            labelPosition="top"
            labels="{{ item.label }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select"
            showSelectionIndicator={true}
            style={{ ordered: [{ background: "canvas" }] }}
            tooltipByIndex=""
            value="{{applicantInformation.value.emails[i].type}}"
            values="{{ item.value }}"
          >
            <Event
              event="change"
              method="setValue"
              params={{
                ordered: [
                  {
                    value:
                      "{{ {\n  ...applicantInformation.value,\n  emails: [\n    ...applicantInformation.value.emails?.slice(0,i),\n    {\n      id: applicantInformation.value.emails[i]?.id,\n      type: emailTypeSelect.value,\n      value: applicantInformation.value.emails[i]?.value,\n    },\n    ...applicantInformation.value.emails?.slice(i + 1)\n  ]\n} }}",
                  },
                ],
              }}
              pluginId="applicantInformation"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled="{{ !applicantInfoForm.invalid && originalFormData.value.emails[i].type !== applicantInformation.value.emails[i].type }}"
              event="blur"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updateApplicantInfo"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <TextInput
            id="emailValueInput"
            disabled="{{ i === 0 }}"
            iconBefore="bold/mail-send-envelope"
            label=""
            labelPosition="top"
            marginType="normal"
            patternType="email"
            placeholder="you@example.com"
            style={{
              ordered: [
                { background: "canvas" },
                { sharedLabel: "rgba(13, 13, 13, 0)" },
              ],
            }}
            value=" {{applicantInformation.value.emails[i].value}}"
          >
            <Event
              event="change"
              method="setValue"
              params={{
                ordered: [
                  {
                    value:
                      "{{ {\n  ...applicantInformation.value,\n  emails: [\n    ...applicantInformation.value.emails?.slice(0,i),\n    {\n      id: applicantInformation.value.emails[i]?.id,\n      type: applicantInformation.value.emails[i]?.type,\n      value: emailValueInput.value,\n    },\n    ...applicantInformation.value.emails?.slice(i + 1)\n  ]\n} }}",
                  },
                ],
              }}
              pluginId="applicantInformation"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled="{{ !applicantInfoForm.invalid && originalFormData.value.emails[i].value !== applicantInformation.value.emails[i].value  }}"
              event="blur"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updateApplicantInfo"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </TextInput>
        </View>
      </Container>
    </ListViewBeta>
    <ListViewBeta
      id="phoneListView"
      computeAllInstanceValues={false}
      data=" {{applicantInformation.value.phones}}"
      heightType="auto"
      itemWidth="200px"
      margin="0"
      marginType="none"
      numColumns={3}
      padding="0"
    >
      <Container
        id="phoneContainer"
        disabled="{{ i === 0 }}"
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
            id="containerTitle143"
            marginType="normal"
            value="#### {{ item }}"
            verticalAlign="center"
          />
        </Header>
        <View id="c9d19" viewKey="View 1">
          <Select
            id="phoneTypeSelect"
            data="{{ phoneTypes.value }}"
            disabled="{{ i === 0 }}"
            emptyMessage="No options"
            label="Phone"
            labelPosition="top"
            labels="{{ item.label }}"
            marginType="normal"
            overlayMaxHeight={375}
            placeholder="Select"
            showSelectionIndicator={true}
            style={{ ordered: [{ background: "canvas" }] }}
            value="{{applicantInformation.value.phones[i].type}}"
            values="{{ item.value }}"
          >
            <Option id="b0d96" value="iOS/Android" />
            <Option id="cf10d" value="Home" />
            <Option id="61bdd" value="Work" />
            <Option id="47fc9" disabled={false} hidden={false} value="Other" />
            <Event
              event="change"
              method="setValue"
              params={{
                ordered: [
                  {
                    value:
                      "{{ {\n  ...applicantInformation.value,\n  phones: [\n    ...applicantInformation.value.phones?.slice(0,i),\n    {\n      id: applicantInformation.value.phones[i]?.id,\n      type: phoneTypeSelect.value,\n      value: applicantInformation.value.phones[i]?.value,\n      smsValidationStatus: applicantInformation.value.phones[i]?.smsValidationStatus,\n    },\n    ...applicantInformation.value.phones?.slice(i + 1)\n  ]\n} }}",
                  },
                ],
              }}
              pluginId="applicantInformation"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled="{{ !applicantInfoForm.invalid && originalFormData.value.phones[i].type !== applicantInformation.value.phones[i].type }}"
              event="blur"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updateApplicantInfo"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </Select>
          <PhoneNumberInput
            id="phoneValueInput"
            _lockSelectedCountry={true}
            label=""
            labelPosition="top"
            lockedCountryCode="US"
            style={{ ordered: [{ background: "canvas" }] }}
            value="1{{applicantInformation.value.phones[i].value}}"
          >
            <Event
              event="change"
              method="setValue"
              params={{
                ordered: [
                  {
                    value:
                      "{{ {\n  ...applicantInformation.value,\n  phones: [\n    ...applicantInformation.value.phones?.slice(0,i),\n    {\n      id: applicantInformation.value.phones[i]?.id,\n      type: applicantInformation.value.phones[i]?.type,\n      value: phoneValueInput.value.substring(2),\n      smsValidationStatus: applicantInformation.value.phones[i]?.smsValidationStatus,\n    },\n    ...applicantInformation.value.phones?.slice(i + 1)\n  ]\n} }}",
                  },
                ],
              }}
              pluginId="applicantInformation"
              type="state"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              enabled="{{ applicantInformation.value.phones[i].value !== phoneValueInput.value.slice(1) && !applicantInfoForm.invalid && originalFormData.value.phones[i].value !== applicantInformation.value.phones[i].value }}"
              event="blur"
              method="trigger"
              params={{ ordered: [] }}
              pluginId="updateApplicantInfo"
              type="datasource"
              waitMs="0"
              waitType="debounce"
            />
          </PhoneNumberInput>
        </View>
      </Container>
    </ListViewBeta>
  </View>
</Container>
