<SidebarFrame
  id="sidebarFrame1"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden=""
  isHiddenOnMobile={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  width="240px"
>
  <Header>
    <Image
      id="sideNavLogo"
      dbBlobId="1b571efa-c2d6-4ea4-a21e-d2a9074c437d"
      fit="contain"
      heightType="fixed"
      marginType="normal"
      retoolStorageFileId="aadf0e08-80bd-4587-992d-a0665679bb8f"
      src="https://retool-edge.com/83d4d9a1f1ecd17d111e6b4a014043cd.svg"
      srcType="dbBlobId"
    />
  </Header>
  <Body>
    <Module
      id="sideMainMenu"
      name="Side Main Menu"
      pageUuid="52e04802-d6ce-40af-bcf4-1e32f2f0f293"
    />
  </Body>
  <Footer>
    <Navigation
      id="navigation7"
      itemMode="static"
      marginType="normal"
      orientation="vertical"
      retoolFileObject={{ ordered: [] }}
    >
      <Option
        id="d5f65"
        icon="bold/interface-login-dial-pad-2"
        iconPosition="left"
        itemType="app"
        label="Apps"
      />
      <Option
        id="82017"
        icon="bold/interface-alert-alarm-bell-1-alternate"
        iconPosition="left"
        itemType="app"
        label="Notifications"
      />
      <Option
        id="bd158"
        icon="bold/interface-arrows-button-to-left"
        iconPosition="left"
        itemType="custom"
        label="Collapse"
      >
        <Event
          event="click"
          method="showNextVisibleView"
          params={{ ordered: [{ wrap: true }] }}
          pluginId="DriversLicense_Photos"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
    </Navigation>
    <Avatar
      id="avatar5"
      fallback="{{ current_user.fullName }}"
      hideLabel={false}
      imageSize={32}
      label="{{ current_user.fullName }}"
      labelCaption="{{ current_user.email }}"
      marginType="normal"
      src="{{ current_user.profilePhotoUrl }}"
      style={{ ordered: [{ background: "automatic" }] }}
    />
  </Footer>
</SidebarFrame>
