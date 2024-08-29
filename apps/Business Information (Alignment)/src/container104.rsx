<Container
  id="container104"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0"
  marginType="none"
  padding="12px"
  showBody={true}
  showBorder={false}
>
  <Header>
    <Text
      id="containerTitle153"
      marginType="normal"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="f8183" viewKey="View 1">
    <Text
      id="text113"
      marginType="normal"
      value="<h4>Business Info</h4>"
      verticalAlign="center"
    />
    <PDFViewer
      id="businessStatusPdf"
      hidden="{{ businessInfo.value.businessStatusProofFiles.length === 0 || !businessInfo.value.businessStatusProofFiles[0]?.originalFilename.includes('pdf') }}"
      marginType="normal"
      showTopBar={true}
      src="{{ businessInfo.value.businessStatusProofFiles[0]?.getUrl }}"
    />
    <TextInput
      id="businessNameInput"
      label="Legal Business Name"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{ businessInfo.value.businessName }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessName: businessNameInput.value,\n} }}",
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
    <Select
      id="yearsInBusinessSelect"
      captionByIndex=""
      colorByIndex=""
      data="{{ jobExperienceList.value }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Years in Business"
      labelPosition="top"
      labels="{{ item.label }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select..."
      showSelectionIndicator={true}
      style={{ ordered: [{ background: "canvas" }] }}
      tooltipByIndex=""
      value="{{ businessInfo.value.yearsInBusiness}}"
      values="{{ item.value }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  yearsInBusiness: yearsInBusinessSelect.value,\n} }}",
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
        params={{ ordered: [] }}
        pluginId="updateBusinessInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <Select
      id="businessStatusSelect"
      captionByIndex=""
      colorByIndex=""
      data="{{ businessStatuses.value }}"
      disabledByIndex=""
      emptyMessage="No options"
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Business Status"
      labelPosition="top"
      labels="{{ item.label }}"
      marginType="normal"
      overlayMaxHeight={375}
      placeholder="Select"
      showSelectionIndicator={true}
      style={{ ordered: [{ background: "canvas" }] }}
      tooltipByIndex=""
      value="{{ businessInfo.value.businessStatus }}"
      values="{{ item.value }}"
    >
      <Event
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  businessStatus: businessStatusSelect.value,  \n} }}",
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
        params={{ ordered: [] }}
        pluginId="updateBusinessInformation"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Select>
    <TextInput
      id="dbaInput"
      label="DBA (if applicable)"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{ businessInfo.value.dba }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  dba: dbaInput.value,\n} }}",
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
      id="einInput"
      label="Employer Identification Number (EIN)"
      labelPosition="top"
      marginType="normal"
      placeholder="Enter value"
      style={{ ordered: [{ background: "canvas" }] }}
      value="{{ businessInfo.value.ein }}"
    >
      <Event
        event="blur"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {\n  ...businessInfo.value,\n  ein: einInput.value,\n} }}",
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
    <Container
      id="businessStatusContainer"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden="{{ businessInfo.value.businessStatusProofFiles.length === 0 || businessInfo.value.businessStatusProofFiles[0]?.originalFilename.includes('pdf') }}"
      padding="12px"
      showBody={true}
    >
      <Header>
        <Text
          id="containerTitle167"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="2ebf4" viewKey="View 1">
        <Image
          id="businessStatusImage"
          hidden=""
          horizontalAlign="center"
          src="{{ businessInfo.value.businessStatusProofFiles[0]?.getUrl }}"
        >
          <Event
            event="click"
            method="show"
            params={{ ordered: [] }}
            pluginId="businessStatusModal"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Image>
      </View>
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="businessStatusModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
  </View>
</Container>
