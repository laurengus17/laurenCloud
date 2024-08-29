<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <CustomAppTheme
    id="$appTheme"
    _migrated={true}
    automatic={[
      "#fde68a",
      "#eecff3",
      "#a7f3d0",
      "#bfdbfe",
      "#c7d2fe",
      "#fecaca",
      "#fcd6bb",
    ]}
    borderRadius="4px"
    canvas="#f6f6f6"
    danger="#dc2626"
    defaultFont={{ name: "Inter", size: "12px" }}
    h1Font={{ map: { size: "36px" } }}
    h2Font={{ map: { size: "28px" } }}
    h3Font={{ map: { size: "24px" } }}
    h4Font={{ map: { size: "18px" } }}
    h5Font={{ map: { size: "16px" } }}
    h6Font={{ map: { size: "14px" } }}
    highlight="#fde68a"
    info="#3170f9"
    primary="#3170f9"
    secondary=""
    success="#059669"
    surfacePrimary="#ffffff"
    surfacePrimaryBorder="rgba(0, 0, 0, 0)"
    surfaceSecondary="#ffffff"
    surfaceSecondaryBorder="rgba(0, 0, 0, 0)"
    tertiary=""
    textDark="#0d0d0d"
    textLight="#ffffff"
    warning="#cd6f00"
  />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <ModuleContainerWidget
      id="moduleContainer"
      backgroundColor="white"
      isGlobalWidgetContainer={true}
      margin="0"
    >
      <Navigation
        id="navigation"
        itemMode="static"
        orientation="vertical"
        retoolStorageFileId={null}
        showInEditor={true}
        src="https://retool-edge.com/83d4d9a1f1ecd17d111e6b4a014043cd.svg"
        srcType="retoolFileObject"
        style={{ ordered: [] }}
      >
        <Option
          id="e54db"
          icon="bold/interface-file-text"
          iconPosition="left"
          itemType="app"
          label="Work Orders"
        >
          <Event
            event="click"
            method="run"
            params={{ ordered: [] }}
            pluginId=""
            type="script"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="2ab42"
          icon="bold/shopping-cart-2-alternate"
          iconPosition="left"
          itemType="app"
          label="Procurement"
        />
        <Option
          id="de546"
          icon="bold/shopping-store-factory-building"
          iconPosition="left"
          itemType="app"
          label="Clients"
        />
        <Option
          id="979d5"
          appTarget="543787ce-019a-11ef-beee-6bdd9d90617d"
          disabled={false}
          hidden={false}
          icon="bold/interface-user-multiple"
          iconPosition="left"
          itemType="custom"
          label="Service Providers"
          screenTarget={null}
        >
          <Event
            event="click"
            method="openApp"
            params={{
              ordered: [{ uuid: "871be8ae-2285-11ef-bcec-cb0279140257" }],
            }}
            pluginId=""
            type="util"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            event="click"
            method="setValue"
            params={{ ordered: [{ value: "Service Providers" }] }}
            pluginId="selectedItem"
            type="state"
            waitMs="0"
            waitType="debounce"
          />
        </Option>
        <Option
          id="c5851"
          disabled={false}
          hidden={false}
          icon="bold/money-currency-dollar"
          iconPosition="left"
          itemType="app"
          label="Accounting"
          screenTarget={null}
        />
        <Option
          id="57aff"
          disabled={false}
          hidden={false}
          icon="bold/money-graph-pie-chart"
          iconPosition="left"
          itemType="app"
          label="Reports"
          screenTarget={null}
        />
        <Option
          id="cda74"
          disabled={false}
          hidden={false}
          icon="bold/interface-security-shield-profile—shield-secure-security-profile-person"
          iconPosition="left"
          itemType="app"
          label="Admin Settings"
          screenTarget={null}
        />
      </Navigation>
    </ModuleContainerWidget>
  </Frame>
</App>
