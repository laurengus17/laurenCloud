<ModalFrame
  id="newProjectModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showHeader={true}
  showHeaderBorder={false}
  showOverlay={true}
  size="fullScreen"
  style={{
    ordered: [
      { headerBackground: "rgb(61, 23, 23)" },
      { footerBackground: "rgb(61, 23, 23)" },
      { borderRadius: "20px" },
    ],
  }}
>
  <Header>
    <Button
      id="modalCloseButton1"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      marginType="normal"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="newProjectModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Image
      id="image1"
      horizontalAlign="center"
      retoolStorageFileId="333bf63b-70a0-4484-8887-4a786ab803d5"
      src="https://placekitten.com/400/300"
      srcType="retoolStorageFileId"
    />
  </Header>
  <Body>
    <Form
      id="CreateUserForm1"
      footerPaddingType="normal"
      headerPaddingType="normal"
      loading="{{ addNewRow.isFetching }}"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{ ordered: [{ border: "surfacePrimary" }] }}
    >
      <Header>
        <Text
          id="formTitle5"
          marginType="normal"
          value="#### New Project"
          verticalAlign="center"
        />
      </Header>
      <Body>
        <Select
          id="kare_group"
          emptyMessage="No options"
          itemMode="static"
          label="Kare Group"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        >
          <Option id="0987e" value="K" />
          <Option id="33736" value="A" />
          <Option id="5d353" value="R" />
          <Option id="985de" disabled={false} hidden={false} value="E" />
        </Select>
        <Select
          id="customer_name"
          captionByIndex=""
          data="{{ salesCustPros.data }}"
          emptyMessage="No options"
          label="Customer"
          labelPosition="top"
          labels="{{ item.account_name }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
          value="{{ table8.selectedRow.account_name }}"
          values="{{ item.account_name }}"
        />
        <TextInput
          id="salesID"
          _disclosedFields={["required"]}
          formDataKey="name"
          hidden="true"
          label="Sales ID"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{ customer_name.selectedItem.sls_id }}"
        />
        <TextInput
          id="project_name"
          _disclosedFields={["required"]}
          formDataKey="name"
          label="Project Name"
          labelPosition="top"
          marginType="normal"
          placeholder="Project Name"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
        />
        <TextInput
          id="territory"
          _disclosedFields={["required"]}
          disabled="true"
          formDataKey="name"
          label="Territory"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{ customer_name.selectedItem.state }}"
        />
        <TextInput
          id="project_start_year"
          _disclosedFields={["required"]}
          formDataKey="name"
          label="Project Start Year"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{moment().format('yyyy')}}"
        />
        <TextInput
          id="active_project_year"
          _disclosedFields={["required"]}
          formDataKey="name"
          label="Active Project Year"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{moment().format('yyyy')}}"
        />
        <Select
          id="funnel_stage"
          captionByIndex=""
          colorByIndex=""
          data=""
          deprecatedLabels={[]}
          disabledByIndex=""
          disabledValues={[]}
          emptyMessage="No options"
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          itemMode="static"
          label="Funnel Stage"
          labelPosition="top"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          tooltipByIndex=""
          value="Universal"
          values=""
        >
          <Option
            id="094c6"
            disabled={false}
            hidden={false}
            value="Universal"
          />
          <Option id="b8a37" disabled={false} hidden={false} value="In" />
          <Option id="e09c0" disabled={false} hidden={false} value="Best Few" />
          <Option id="ecfca" disabled={false} hidden={false} value="Close" />
        </Select>
        <Select
          id="status"
          captionByIndex=""
          colorByIndex=""
          data=""
          deprecatedLabels={[]}
          disabledByIndex=""
          disabledValues={[]}
          emptyMessage="No options"
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          itemMode="static"
          label="Status"
          labelPosition="top"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          tooltipByIndex=""
          value="Open"
          values=""
        >
          <Option id="eefb0" disabled={false} hidden={false} value="Open" />
          <Option id="13120" disabled={false} hidden={false} value="Won" />
          <Option id="6e86a" disabled={false} hidden={false} value="Lost" />
        </Select>
        <TextInput
          id="market"
          disabled="true"
          label="Segment"
          labelPosition="top"
          placeholder="Enter value"
          value="{{ customer_name.selectedItem.segment }}"
        />
        <Select
          id="mainProductT"
          captionByIndex=""
          colorByIndex=""
          data=""
          deprecatedLabels={[]}
          disabledByIndex=""
          disabledValues={[]}
          emptyMessage="No options"
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          itemMode="static"
          label="Main Product Target"
          labelPosition="top"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          tooltipByIndex=""
          values=""
        >
          <Option id="eefb0" disabled={false} hidden={false} value="PLRS" />
          <Option id="13120" disabled={false} hidden={false} value="PRRS" />
          <Option id="6e86a" disabled={false} hidden={false} value="PLBG" />
          <Option id="73b3d" disabled={false} hidden={false} value="PRBG" />
          <Option id="b5e2c" disabled={false} hidden={false} value="PLZB" />
          <Option id="4cc89" disabled={false} hidden={false} value="PRZB" />
          <Option id="6509b" disabled={false} hidden={false} value="LDBG" />
        </Select>
        <NumberInput
          id="cCustomerVlbs"
          currency="USD"
          formDataKey="name"
          hidden="true"
          inputValue={0}
          label="Current Customer Volume in LBs"
          labelPosition="top"
          placeholder="Enter value"
          showStepper={true}
          style={{ ordered: [] }}
          value="0"
        />
        <NumberInput
          id="targAdditionalAlbs"
          currency="USD"
          formDataKey="name"
          inputValue={0}
          label="Targeted Additional Annual Lbs"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showStepper={true}
          style={{ ordered: [] }}
          value="0"
        />
        <NumberInput
          id="targAdditionalprintImpUnits"
          currency="USD"
          formDataKey="name"
          inputValue={0}
          label="Taraget Additional Printed  Impressions Units"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showStepper={true}
          style={{ ordered: [] }}
          value={0}
        />
        <NumberInput
          id="targAdditionalABags"
          currency="USD"
          formDataKey="name"
          inputValue={0}
          label="Target Additional Annual Bags"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showStepper={true}
          style={{ ordered: [] }}
          value="0"
        />
        <NumberInput
          id="targAdditionalLandscapebags"
          currency="USD"
          formDataKey="name"
          inputValue={0}
          label="Targeted Additional Landscape Bags"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showStepper={true}
          style={{ ordered: [] }}
          value="0"
        />
        <Select
          id="open_new_opportunity_quote"
          captionByIndex=""
          colorByIndex=""
          data=""
          deprecatedLabels={[]}
          disabledByIndex=""
          disabledValues={[]}
          emptyMessage="No options"
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          itemMode="static"
          label="Open New Opportunity Quote"
          labelPosition="top"
          labels=""
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          tooltipByIndex=""
          values=""
        >
          <Option id="eefb0" disabled={false} hidden={false} value="Yes" />
          <Option id="13120" disabled={false} hidden={false} value="No" />
        </Select>
        <TextInput
          id="project_desc"
          _disclosedFields={["required"]}
          formDataKey="name"
          label="Project Description"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
        />
      </Body>
      <Footer>
        <Button
          id="formButton2"
          marginType="normal"
          style={{
            ordered: [
              { background: "rgb(61, 23, 23)" },
              { borderRadius: "8px" },
            ],
          }}
          submit={true}
          submitTargetId="CreateUserForm1"
          text="Submit Project"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addNewRow"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="hide"
        params={{ ordered: [] }}
        pluginId="newProjectModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
</ModalFrame>
