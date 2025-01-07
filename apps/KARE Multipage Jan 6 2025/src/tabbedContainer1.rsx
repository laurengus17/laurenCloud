<Container
  id="tabbedContainer1"
  _gap={0}
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Tabs
      id="tabs1"
      itemMode="static"
      navigateContainer={true}
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="d4b2d" value="Tab 1" />
      <Option id="31752" value="Tab 2" />
      <Option id="3d8e0" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="eef05" viewKey="Stage & Status">
    <Form
      id="stageStatusForm"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
    >
      <Header>
        <Text id="formTitle6" value="#### Form title" verticalAlign="center" />
      </Header>
      <Body>
        <Select
          id="status2"
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
          value="{{selected?.value.won_lost}}"
          values=""
        >
          <Option id="eefb0" disabled={false} hidden={false} value="Open" />
          <Option id="13120" disabled={false} hidden={false} value="Won" />
          <Option id="6e86a" disabled={false} hidden={false} value="Lost" />
          <Event
            event="change"
            method="run"
            params={{
              ordered: [
                {
                  src: "statusReason.setHidden(false)\nstatusReason.setDisabled(false)",
                },
              ],
            }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <Select
          id="funnel_stage2"
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
          value="{{selected?.value.funnel_stage}}"
          values=""
        >
          <Option
            id="6e892"
            disabled={false}
            hidden={false}
            value="Universal"
          />
          <Option id="b974f" disabled={false} hidden={false} value="Close" />
          <Option id="7fd2f" disabled={false} hidden={false} value="Best Few" />
          <Option id="2ed13" disabled={false} hidden={false} value="In" />
          <Option id="bf39b" disabled={false} hidden={false} value="N/A" />
          <Event
            event="change"
            method="run"
            params={{
              ordered: [
                {
                  src: 'if(funnel_stage2.value != "Universal" || funnel_stage2.value != "N/A" || funnel_stage2.value != " "){\nfsReason.setHidden(false)\nfsReason.setDisabled(false)\n}',
                },
              ],
            }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <Select
          id="statusReason"
          disabled="true"
          emptyMessage="No options"
          hidden="true"
          itemMode="static"
          label="Reason for Change of Status"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showClear={true}
          showSelectionIndicator={true}
        >
          <Option
            id="2f65d"
            disabled={false}
            hidden={'{{ status2.value != "Open" }}'}
            value="New"
          />
          <Option
            id="00c95"
            disabled={false}
            hidden={'{{ status2.value != "Open" }}'}
            value="Prospect Reached out"
          />
          <Option
            id="9bf7d"
            disabled={false}
            hidden={'{{ status2.value != "Open" }}'}
            value="Reengaging with Trraction"
          />
          <Option
            id="bfcc5"
            disabled={false}
            hidden={'{{ status2.value != "Won" }}'}
            value="1st Full Order"
          />
          <Option
            id="7b8e5"
            disabled={false}
            hidden={'{{ status2.value != "Won" }}'}
            value="2nd Full Order"
          />
          <Option
            id="34bfb"
            disabled={false}
            hidden={'{{ status2.value != "Won" }}'}
            value="Contractual Commitment"
          />
          <Option
            id="8b85d"
            disabled={false}
            hidden={'{{ status2.value != "Lost" }}'}
            value="No Traction"
          />
          <Option
            id="62dd0"
            disabled={false}
            hidden={'{{ status2.value != "Lost" }}'}
            value="Not Competitive"
          />
          <Option
            id="4829b"
            disabled={false}
            hidden={'{{ status2.value != "Lost" }}'}
            value="Failed Trial"
          />
          <Option
            id="98ba7"
            disabled={false}
            hidden={'{{ status2.value != "Lost" }}'}
            value="Not a Fit"
          />
        </Select>
        <Select
          id="fsReason"
          disabled="true"
          emptyMessage="No options"
          hidden="true"
          itemMode="static"
          label="Reason for Change to FS"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showClear={true}
          showSelectionIndicator={true}
        >
          <Option
            id="56093"
            hidden={'{{ funnel_stage2.value != "In" }}'}
            value="Sending Specs"
          />
          <Option
            id="6b7b3"
            hidden={'{{ funnel_stage2.value != "In" }}'}
            value="Opportunity to Quote"
          />
          <Option
            id="45533"
            hidden={'{{ funnel_stage2.value != "In" }}'}
            value="Participating in Big"
          />
          <Option
            id="e5243"
            disabled={false}
            hidden={'{{ funnel_stage2.value != "In" }}'}
            value="Meeting on Customer Site"
          />
          <Option
            id="7a8e4"
            disabled={false}
            hidden={'{{ funnel_stage2.value != "Best Few" }}'}
            value="Bid Pricing Approved"
          />
          <Option
            id="7e929"
            disabled={false}
            hidden={'{{ funnel_stage2.value != "Best Few" }}'}
            value="Quote Pricing approved"
          />
          <Option
            id="193d8"
            disabled={false}
            hidden={'{{ funnel_stage2.value != "Close" }}'}
            value="Chargable Trial"
          />
          <Option
            id="6af0e"
            disabled={false}
            hidden={'{{ funnel_stage2.value != "Close" }}'}
            value="Comp Trial"
          />
          <Option
            id="52892"
            disabled={false}
            hidden={'{{ funnel_stage2.value != "Close" }}'}
            value="Ramp up Order"
          />
        </Select>
        <Button
          id="stageStatusButton"
          style={{ ordered: [{ background: "rgb(61, 23, 23)" }] }}
          submit={true}
          submitTargetId="stageStatusForm"
          text="Submit"
        />
      </Body>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="stageStatusChanges"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="hide"
        params={{ ordered: [] }}
        pluginId="viewEditProjectModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateStatusStage"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="setDisabled"
        params={{ ordered: [] }}
        pluginId="statusReason"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="setHidden"
        params={{ ordered: [] }}
        pluginId="statusReason"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="setDisabled"
        params={{ ordered: [] }}
        pluginId="fsReason"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="setHidden"
        params={{ ordered: [] }}
        pluginId="fsReason"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View id="400ca" viewKey="Details">
    <Form
      id="updateProjectForm"
      data={{ ordered: [] }}
      footerPaddingType="normal"
      headerPaddingType="normal"
      loading="{{ updateRow.isFetching }}"
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
        <TextInput
          id="kare_group2"
          _disclosedFields={["required"]}
          formDataKey="name"
          label="Kare Group"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{selected?.value.kare_group }}"
        />
        <Select
          id="customer_name2"
          captionByIndex=""
          colorByIndex=""
          data="{{ kare.data }}"
          deprecatedLabels={[]}
          disabledByIndex=""
          disabledValues={[]}
          emptyMessage="No options"
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="Customer"
          labelPosition="top"
          labels="{{ item?.customer_name}}"
          overlayMaxHeight={375}
          placeholder="{{selected?.value.customer_name}}"
          showSelectionIndicator={true}
          tooltipByIndex=""
          value="{{selected?.value.customer_name}}"
          values="{{ item?.customer_name}}"
        />
        <TextInput
          id="salesID2"
          _disclosedFields={["required"]}
          formDataKey="name"
          label="Sales ID"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{selected?.value.sales_id}}"
        />
        <TextInput
          id="project_name2"
          _disclosedFields={["required"]}
          formDataKey="name"
          label="Project Name"
          labelPosition="top"
          marginType="normal"
          placeholder="Project Name"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{selected?.value.project_name}}"
        />
        <TextInput
          id="territory2"
          _disclosedFields={["required"]}
          formDataKey="name"
          label="Territory"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{selected?.value.territory}}"
        />
        <TextInput
          id="project_start_year2"
          _disclosedFields={["required"]}
          formDataKey="name"
          label="Project Start Year"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{ selected?.value.project_start_year }}"
        />
        <TextInput
          id="active_project_year2"
          _disclosedFields={["required"]}
          formDataKey="name"
          label="Active Project Year"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{ selected?.value.active_project_year }}"
        />
        <Select
          id="market2"
          captionByIndex=""
          colorByIndex=""
          data="{{ kare.data }}"
          deprecatedLabels={[]}
          disabledByIndex=""
          disabledValues={[]}
          emptyMessage="No options"
          fallbackTextByIndex=""
          hiddenByIndex=""
          iconByIndex=""
          imageByIndex=""
          label="Market"
          labelPosition="top"
          labels="{{ item.market}}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          tooltipByIndex=""
          value="{{selected?.value.market}}"
          values="{{ item.market }}"
        >
          <Option id="eefb0" disabled={false} hidden={false} value="Open" />
          <Option id="13120" disabled={false} hidden={false} value="Won" />
          <Option id="6e86a" disabled={false} hidden={false} value="Lost" />
        </Select>
        <Select
          id="mainProductT2"
          captionByIndex=""
          colorByIndex=""
          data="{{ kare.data }}"
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
          labels="{{ item.main_product_target}}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          tooltipByIndex=""
          value="{{selected?.value.main_product_target}}"
          values="{{ item.main_product_target }}"
        >
          <Option id="eefb0" disabled={false} hidden={false} value="PRRS" />
          <Option id="13120" disabled={false} hidden={false} value="PRBG" />
          <Option id="6e86a" disabled={false} hidden={false} value="PLRS" />
          <Option id="51ea5" disabled={false} hidden={false} value="LDBG" />
          <Option id="6ba34" disabled={false} hidden={false} value="PLBG" />
          <Option id="2eb89" disabled={false} hidden={false} value="null" />
          <Option id="341c3" disabled={false} hidden={false} />
        </Select>
        <TextInput
          id="targAdditionalLandscapebags2"
          _disclosedFields={["required"]}
          formDataKey="name"
          label="Targeted Additional Landscape Bags"
          labelPosition="top"
          marginType="normal"
          placeholder="Enter value"
          required={true}
          style={{ ordered: [{ borderRadius: "8px" }] }}
          value="{{selected?.value.targeted_additional_landscape_bags}}"
        />
        <NumberInput
          id="targAdditionalAlbs2"
          currency="USD"
          formDataKey="name"
          inputValue={0}
          label="Targeted Additional Annual Lbs"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          style={{ ordered: [] }}
          value="{{selected?.value.targeted_additional_annual_lbs}}"
        />
        <NumberInput
          id="cCustomerVlbs2"
          currency="USD"
          formDataKey="name"
          hidden="true"
          inputValue={0}
          label="Current Customer Volume in LBs"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          style={{ ordered: [] }}
          value="{{selected.value.current_customer_volume_in_l_bs}}"
        />
        <NumberInput
          id="targAdditionalABags2"
          currency="USD"
          formDataKey="name"
          inputValue={0}
          label="Target Additional Annual Bags"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          style={{ ordered: [] }}
          value="{{selected?.value.target_additional_annual_bags}}"
        />
        <NumberInput
          id="targAdditionalprintImpUnits2"
          currency="USD"
          formDataKey="name"
          inputValue={0}
          label="Taraget Additional Printed  Impressions Units"
          labelPosition="top"
          placeholder="Enter value"
          required={true}
          showSeparators={true}
          showStepper={true}
          style={{ ordered: [] }}
          value="{{selected?.value.taraget_additional_printed_impressions_units}}"
        />
        <Select
          id="open_new_opportunity_quote2"
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
          value="{{selected.value.open_new_opportunity_quote?.trim()}}"
          values=""
        >
          <Option id="eefb0" disabled={false} hidden={false} value="Yes" />
          <Option id="13120" disabled={false} hidden={false} value="No" />
        </Select>
        <TextArea
          id="project_desc2"
          autoResize={true}
          formDataKey="name"
          label="Project Description"
          labelPosition="top"
          minLines={2}
          placeholder="Enter value"
          required={true}
          style={{ ordered: [] }}
          value="{{selected?.value.project_desc}}"
        />
      </Header>
      <Footer>
        <Button
          id="formButton3"
          marginType="normal"
          style={{
            ordered: [
              { background: "rgb(61, 23, 23)" },
              { borderRadius: "8px" },
            ],
          }}
          submit={true}
          submitTargetId="updateProjectForm"
          text="Submit Project"
        />
      </Footer>
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="changes"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="hide"
        params={{ ordered: [] }}
        pluginId="viewEditProjectModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateRow"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </View>
  <View
    id="e1a34"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Notes & Comments"
  >
    <Table
      id="table5"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ Notes.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "afbae", direction: "desc" } }]}
      emptyMessage="No rows found"
      enableSaveActions={true}
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="b857e"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={28}
        summaryAggregationMode="none"
      />
      <Column
        id="83d7f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="projectID"
        label="Project id"
        placeholder="Enter value"
        position="center"
        size={70.90625}
        summaryAggregationMode="none"
      />
      <Column
        id="a629d"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="type"
        label="Type"
        placeholder="Select option"
        position="center"
        size={95.125}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="afbae"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="Date"
        label="Date"
        placeholder="Enter value"
        position="center"
        size={145.828125}
        summaryAggregationMode="none"
      />
      <Column
        id="ea097"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="text"
        label="Text"
        placeholder="Enter value"
        position="center"
        size={220.75}
        summaryAggregationMode="none"
      />
      <Column
        id="59354"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="User"
        label="User"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table5"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table5"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="doubleClickRow"
        method="show"
        params={{ ordered: [] }}
        pluginId="notesModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
  <View
    id="ffcdb"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Updates"
  >
    <Table
      id="table6"
      cellSelection="none"
      changesetArray={[]}
      clearChangesetOnSave={true}
      cursorCache={{}}
      data="{{ Updates.data }}"
      defaultFilterOperator="or"
      defaultFilters={{
        0: {
          ordered: [
            { id: "e6387" },
            { columnId: "0cf5d" },
            { operator: "is" },
            { value: "Funnel Stage" },
            { disabled: false },
          ],
        },
        1: {
          ordered: [
            { id: "554c4" },
            { columnId: "0cf5d" },
            { operator: "is" },
            { value: "Status" },
            { disabled: false },
          ],
        },
      }}
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      defaultSort={[{ object: { columnId: "8d2d8", direction: "desc" } }]}
      dynamicColumnSource={[]}
      emptyMessage="No rows found"
      enableSaveActions={true}
      expandedRowDataIndexes={[]}
      newRows={[]}
      rowBackgroundColor=""
      rowHeight="small"
      selectedDataIndexes={[]}
      selectedRowKeys={[]}
      selectedRows={[]}
      selectedSourceRows={[]}
      showBorder={true}
      showFooter={true}
      showHeader={true}
      sortArray={[]}
      toolbarPosition="bottom"
    >
      <Column
        id="b857e"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={35.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="83d7f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="projectID"
        label="Project id"
        placeholder="Enter value"
        position="center"
        size={67.671875}
        summaryAggregationMode="none"
      />
      <Column
        id="8d2d8"
        alignment="left"
        format="date"
        groupAggregationMode="none"
        key="date"
        label="Date"
        placeholder="Enter value"
        position="center"
        size={116.21875}
        summaryAggregationMode="none"
      />
      <Column
        id="0cf5d"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="field"
        label="Field"
        placeholder="Enter value"
        position="center"
        size={84.203125}
        summaryAggregationMode="none"
      />
      <Column
        id="4ecda"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="old"
        label="Old"
        placeholder="Enter value"
        position="center"
        size={44.734375}
        summaryAggregationMode="none"
      />
      <Column
        id="3d098"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="new"
        label="New"
        placeholder="Enter value"
        position="center"
        size={62.40625}
        summaryAggregationMode="none"
      />
      <Column
        id="ae5b4"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="daysSince"
        label="Days since"
        placeholder="Enter value"
        position="center"
        size={72.78125}
        summaryAggregationMode="none"
      />
      <Column
        id="62b2f"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="user"
        label="User"
        position="center"
        size={100}
        summaryAggregationMode="none"
      >
        <Event
          event="clickCell"
          method="openUrl"
          params={{ ordered: [{ url: "mailto:{{ item }}" }] }}
          pluginId=""
          type="util"
          waitMs="0"
          waitType="debounce"
        />
      </Column>
      <Column
        id="20dae"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="reason"
        label="Reason"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8e5cb"
        alignment="left"
        format="boolean"
        groupAggregationMode="none"
        key="acknowledge"
        label="Acknowledge"
        placeholder="Enter value"
        position="center"
        size={89.59375}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table6"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table6"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="doubleClickRow"
        method="show"
        params={{ ordered: [] }}
        pluginId="updateModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
  <View
    id="84c08"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Contacts"
  >
    <Table
      id="table16"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ contacts.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="cf04a"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="3fe3c"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="ID"
        label="Id"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="de294"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        hidden="true"
        key="COUNT"
        label="Count"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="24c13"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="TITLE"
        label="Title"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="7b557"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="FIRST"
        label="First"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8286e"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="LAST"
        label="Last"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="dccc6"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="ADDRESS1"
        label="Address 1"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="efc7a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="ADDRESS2"
        label="Address 2"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9c9b4"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="CITY"
        label="City"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="c4cbf"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="STATE"
        label="State"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="57262"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="ZIP"
        label="Zip"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="b5751"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="SLSID"
        label="Slsid"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ab0a3"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="LOC"
        label="Loc"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="de4fd"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="PHONE"
        label="Phone"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="9d95f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="EXTEN"
        label="Exten"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="cfb77"
        alignment="left"
        format="phoneNumber"
        formatOptions={{
          showFormatting: true,
          showCountryCallingCode: true,
          restrictToCountry: false,
        }}
        groupAggregationMode="none"
        key="CELL"
        label="Cell"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="56a32"
        alignment="left"
        format="link"
        formatOptions={{ showUnderline: "hover" }}
        groupAggregationMode="none"
        key="EMAIL"
        label="Email"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="a98ee"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="POSITION"
        label="Position"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="25287"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="CUSTLOC"
        label="Custloc"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="587ae"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="MARKETING"
        label="Marketing"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3ddcc"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="PRICE"
        label="Price"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="ad8d3"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="ONFILE"
        label="Onfile"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="3653c"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="BIRTHDAY"
        label="Birthday"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="583f8"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="STATUS"
        label="Status"
        placeholder="Select option"
        position="center"
        size={100}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="8b30b"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="STATUSDATE"
        label="Statusdate"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="cec7a"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="FAX"
        label="Fax"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="8b37f"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="GRAPHICS"
        label="Graphics"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="d38df"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="ACCTPAY"
        label="Acctpay"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <Column
        id="cf04a"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={100}
        summaryAggregationMode="none"
      />
      <ToolbarButton
        id="1a"
        icon="bold/interface-text-formatting-filter-2"
        label="Filter"
        type="filter"
      />
      <ToolbarButton
        id="3c"
        icon="bold/interface-download-button-2"
        label="Download"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="exportData"
          pluginId="table16"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      >
        <Event
          event="clickToolbar"
          method="refresh"
          pluginId="table16"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
      <Event
        event="doubleClickRow"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame10"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
  <View
    id="04506"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Strategic Profile"
  >
    <KeyValue
      id="keyValue4"
      data="{{ startprofile.data }}"
      editIcon="bold/interface-edit-pencil"
      enableSaveActions={true}
      itemLabelPosition="top"
      labelWrap={true}
    >
      <Property
        id="compExistCust"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Comp exist cust"
      />
      <Property
        id="rchc"
        editable="false"
        editableOptions={{}}
        format="string"
        formatOptions={{}}
        hidden="false"
        label="Rchc"
      />
    </KeyValue>
  </View>
</Container>
