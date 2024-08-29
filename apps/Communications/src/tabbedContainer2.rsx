<Container
  id="tabbedContainer2"
  currentViewKey="{{ self.viewKeys[0] }}"
  footerPadding="4px 12px"
  headerPadding="16px 24px 8px"
  heightType="fixed"
  margin="0"
  marginType="normal"
  overflowType="hidden"
  padding="0"
  showBody={true}
  showFooter={true}
  showHeader={true}
  showHeaderBorder={false}
  style={{
    ordered: [{ border: "rgb(224, 224, 224)" }, { borderRadius: "0px" }],
  }}
>
  <Header>
    <TextInput
      id="textInput100"
      hideLabel={true}
      iconBefore="bold/interface-search"
      labelCaption="Search..."
      labelPosition="top"
      margin="0"
      marginType="normal"
      placeholder="Search..."
    />
    <Tabs
      id="tabs4"
      alignment="justify"
      itemMode="static"
      margin="16px 0px 0px "
      marginType="normal"
      navigateContainer={true}
      style={{ ordered: [] }}
      styleVariant="lineBottom"
      targetContainerId="tabbedContainer2"
      value="{{ self.values[0] }}"
    >
      <Option id="258cc" value="Tab 1" />
      <Option id="f5c27" value="Tab 2" />
      <Option id="d0d8d" value="Tab 3" />
    </Tabs>
  </Header>
  <View id="1c660" label="Internal" viewKey="internal">
    <ListViewBeta
      id="listView4"
      _primaryKeys="{{ item }}"
      computeAllInstanceValues={false}
      data={
        '["Kent Doit", "Jim Lahey", "Joe Mudder", "Mittens", "Bob Bilder", "Dee Snuts", "Big Mike", "Les Ismore", "Mario"]'
      }
      itemWidth="200px"
      margin="0"
      marginType="normal"
      numColumns={3}
      padding="0"
    >
      <Avatar
        id="avatar4"
        fallback="{{ current_user.fullName }}"
        imageSize={32}
        label="{{item}}"
        labelCaption="This is a message..."
        margin="4px 24px"
        marginType="normal"
        src="{{ current_user.profilePhotoUrl }}"
        style={{ ordered: [{ background: "automatic" }] }}
      />
    </ListViewBeta>
  </View>
  <View id="f6dfe" label="External" viewKey="external">
    <ListViewBeta
      id="listView2"
      _primaryKeys="{{item}}"
      computeAllInstanceValues={false}
      data={
        '["Jesus Chaparro", "Whiskers", "Fido", "Mittens", "Rex", "Snowball"]'
      }
      itemWidth="200px"
      margin="0"
      marginType="normal"
      numColumns={3}
      padding="0"
    >
      <Avatar
        id="avatar2"
        fallback="{{ current_user.fullName }}"
        imageSize={32}
        label="{{item}}"
        labelCaption="This is a message..."
        margin="4px 24px"
        marginType="normal"
        src="{{ current_user.profilePhotoUrl }}"
        style={{ ordered: [{ background: "automatic" }] }}
      />
    </ListViewBeta>
  </View>
  <Footer>
    <ToggleButton
      id="toggleButton2"
      horizontalAlign="stretch"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="right"
      marginType="normal"
      styleVariant="outline"
      text="New Conversation"
      value=""
    />
  </Footer>
</Container>
