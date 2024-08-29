<App>
  <GlobalWidgetProp id="serviceProviderId" />
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
    >
      <Container
        id="chat_container"
        footerPadding="4px 12px"
        headerPadding="4px 12px"
        heightType="fixed"
        margin="0"
        marginType="normal"
        overflowType="hidden"
        padding="0"
        showBody={true}
      >
        <Header>
          <Text
            id="containerTitle34"
            marginType="normal"
            value="#### Container title"
            verticalAlign="center"
          />
        </Header>
        <View id="79b2a" viewKey="View 1">
          <Include src="./src/tabbedContainer2.rsx" />
          <Chat
            id="chat1"
            _actionDisabled={{ ordered: [{ "1a": "" }] }}
            _actionHidden={{ ordered: [{ "1a": "" }] }}
            _actionIcon={{ ordered: [{ "1a": "line/interface-align-front" }] }}
            _actionIds={["1a"]}
            _actionLabel={{ ordered: [{ "1a": "Copy" }] }}
            _actionType={{ ordered: [{ "1a": "copy" }] }}
            _defaultUsername="{{ current_user.fullName }}"
            _headerButtonHidden={{
              ordered: [{ "2b": "" }, { "3c": "" }, { a5b6d: "" }],
            }}
            _headerButtonIcon={{
              ordered: [
                { "2b": "line/interface-download-button-2" },
                { "3c": "line/interface-delete-bin-2" },
                { a5b6d: "bold/interface-setting-menu-vertical" },
              ],
            }}
            _headerButtonIds={["2b", "3c", "a5b6d"]}
            _headerButtonLabel={{
              ordered: [
                { "2b": "Download" },
                { "3c": "Clear history" },
                { a5b6d: "Menu" },
              ],
            }}
            _headerButtonType={{
              ordered: [
                { "2b": "download" },
                { "3c": "clearHistory" },
                { a5b6d: "clearHistory" },
              ],
            }}
            _sessionStorageId="2c386740-9e40-4165-bc7f-fd62d486d6a6"
            assistantName="Retool AI"
            avatarFallback="{{ current_user.fullName }}"
            avatarImageSize={32}
            avatarSrc="{{ current_user.profilePhotoUrl }}"
            emptyDescription="Send a message to chat with AI"
            emptyTitle="No messages here yet"
            margin="0"
            marginType="normal"
            placeholder="Type a message"
            queryTargetId="chat1_query2"
            showAvatar={true}
            showEmptyState={true}
            showHeader={true}
            showTimestamp={true}
            style={{
              ordered: [
                { background: "automatic" },
                { containerBorderRadius: "0px" },
              ],
            }}
            title="Chat"
          >
            <Event
              event="clickHeader"
              method="confetti"
              params={{ ordered: [] }}
              pluginId=""
              targetId="a5b6d"
              type="util"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickAction"
              method="copyToClipboard"
              params={{ ordered: [{ value: "{{ currentMessage.value }}" }] }}
              pluginId="chat1"
              targetId="1a"
              type="util"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickHeader"
              method="exportData"
              pluginId="chat1"
              targetId="2b"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
            <Event
              event="clickHeader"
              method="clearHistory"
              pluginId="chat1"
              targetId="3c"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Chat>
        </View>
      </Container>
    </ModuleContainerWidget>
  </Frame>
</App>
