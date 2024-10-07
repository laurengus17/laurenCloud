<Container
  id="tabbedContainer1"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  heightType="fixed"
  hidden=""
  margin="0"
  marginType="normal"
  padding="24px"
  showBody={true}
  showBorder={false}
  showHeader={true}
  style={{
    ordered: [
      { headerBackground: "surfacePrimary" },
      { borderRadius: "8px" },
      { background: "rgba(255, 255, 255, 0)" },
    ],
  }}
>
  <Header>
    <Tabs
      id="tabs2"
      alignment="justify"
      itemMode="static"
      marginType="normal"
      navigateContainer={true}
      style={{ ordered: [{ border: "rgba(224, 224, 224, 0)" }] }}
      styleVariant="lineBottom"
      targetContainerId="tabbedContainer1"
      value="{{ self.values[0] }}"
    >
      <Option id="54dd5" value="Tab 1" />
      <Option id="c9822" value="Tab 2" />
      <Option id="ea7c6" value="Tab 3" />
    </Tabs>
  </Header>
  <View
    id="2173a"
    iconPosition="left"
    viewKey="Applicant Alignment
"
  >
    <Include src="./steppedContainer1.rsx" />
  </View>
  <View
    id="eca18"
    disabled={false}
    hidden={false}
    iconPosition="left"
    viewKey="Documents"
  >
    <Module
      id="documentsCompliance1"
      margin="0"
      name="Documents (Compliance)"
      pageUuid="01a8861d-4e52-4db7-a4b1-3ebd4f969ce7"
      profileStatus="{{ applicantInformation.value.profileStatus }}"
      serviceProviderId="{{ urlparams.userId }}"
    />
  </View>
  <View
    id="47673"
    disabled={false}
    hidden="true"
    iconPosition="left"
    viewKey="Security"
  >
    <Module
      id="security1"
      margin="0"
      name="Security"
      pageUuid="3a224808-70f6-411d-b52a-403a988debac"
      serviceProviderId=""
    />
  </View>
  <View
    id="e7b4a"
    disabled={false}
    hidden="true"
    iconPosition="left"
    viewKey="History"
  >
    <Module
      id="history1"
      margin="0"
      name="History"
      pageUuid="6f803b73-312a-44ed-aa57-7bc8cbc8f001"
      serviceProviderId=""
    />
  </View>
  <View
    id="cdc64"
    disabled={false}
    hidden="true"
    iconPosition="left"
    viewKey="Communications"
  >
    <Module
      id="communications1"
      margin="0"
      name="Communications"
      pageUuid="6baf2426-0402-4478-96f2-7abb5d875d9a"
      serviceProviderId=""
    />
  </View>
</Container>
