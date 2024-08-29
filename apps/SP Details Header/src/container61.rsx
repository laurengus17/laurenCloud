<Container
  id="container61"
  disabledByIndex={[]}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden=""
  hiddenByIndex={[]}
  hoistFetching={true}
  iconByIndex={[]}
  iconPositionByIndex={[]}
  labels={[]}
  loading=""
  margin="0"
  marginType="normal"
  overflowType="hidden"
  padding="0"
  showBody={true}
  showBorder={false}
  showHeader="false"
  style={{ ordered: [] }}
  tooltipByIndex={[]}
  viewKeys={[]}
  views={[]}
>
  <View id="2598f" viewKey="View 1">
    <Avatar
      id="spAvatar"
      fallback="{{ 
  `${getSPDetails.data?.firstname?.[0] ?? ''}${getSPDetails.data?.lastname?.[0]?? ''}`
}}"
      hideLabel={false}
      imageSize={40}
      label="{{ getSPDetails.data.firstname }} {{ getSPDetails.data.lastname }}"
      labelCaption="{{ getSPDetails.data.businessName }}"
      marginType="normal"
      style={{ ordered: [] }}
    />
    <Select
      id="select1"
      emptyMessage="No options"
      itemMode="static"
      label=""
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Contact"
      showSelectionIndicator={true}
      style={{
        ordered: [
          { placeholder: "primary" },
          { border: "primary" },
          { text: "primary" },
        ],
      }}
    >
      <Option id="02ef1" label="Call" value="Call" />
      <Option id="bf5dc" value="Text Message" />
      <Option id="8324b" disabled={false} hidden={false} value="Chat" />
      <Option id="bef44" value="Email" />
    </Select>
    <Text
      id="text69"
      marginType="normal"
      value={
        'Type: **{{ getSPDetails.data.spKey === "independent_technician" ? "Independent Technician" : getSPDetails.data.spKey === "vendor" ? "Vendor": getSPDetails.data.spKey === "owner_operator" ? "Owner Operator" : "" }}**'
      }
      verticalAlign="center"
    />
    <Text
      id="text81"
      marginType="normal"
      value="Primary: **{{ getSPDetails.data.tradeName }}**"
      verticalAlign="center"
    />
    <Text
      id="text70"
      marginType="normal"
      value="Secondary: **{{ getSPDetails.data.secondaryTradeName }}**"
      verticalAlign="center"
    />
  </View>
</Container>
