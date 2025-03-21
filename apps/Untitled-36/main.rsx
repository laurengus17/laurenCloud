<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <IFrame
      id="iFrame1"
      allowSameOrigin={true}
      src="https://www.wikipedia.org/"
      title="{{ self.src }}"
    />
    <FileButton
      id="fileButton1"
      _isUpgraded={true}
      iconBefore="bold/programming-browser-search"
      maxCount={20}
      maxSize="250mb"
      parseFiles={true}
      styleVariant="outline"
      text="Browse"
    />
  </Frame>
</App>
