<ModalFrame
  id="reviewModal"
  footerPadding="8px 12px"
  headerPadding="8px 12px"
  hidden={true}
  hideOnEscape={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Button
      id="modalCloseButton1"
      ariaLabel="Close"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="reviewModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Text
      id="collapsibleTitle12"
      marginType="normal"
      value="#### {{ modalPhoto.value.photoName }}"
      verticalAlign="center"
    />
  </Header>
  <Body>
    <BoundingBox
      id="photoBoundingBox"
      boundingBoxes="{{ modalPhoto.value.tags?.map((tag) => ({
  label: tag.name,
  height: tag.height,
  width: tag.width,
  x: tag.x,
  y: tag.y
})) }}"
      events={[
        {
          ordered: [
            { event: "change" },
            { type: "state" },
            { method: "setValue" },
            { pluginId: "modalPhoto" },
            { targetId: null },
            {
              params: {
                ordered: [
                  {
                    value:
                      "{{\n    {...modalPhoto.value, tags: photoBoundingBox.boundingBoxes?.map((tag) => ({\n      id: vehicleTags.value.find((option) => option.name === tag.label)?.id,\n      name: tag.label,\n      height: tag.height,\n      width: tag.width,\n      x: tag.x,\n      y: tag.y,\n      tagType: 'VEHICLES',\n    }))\n    }\n}}",
                  },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
      ]}
      imageUrl="{{ modalPhoto.value.getUrl }}"
      labels="{{ vehicleTags.value.map((tag) => tag.name) }}"
    />
  </Body>
  <Footer>
    <ButtonGroup2 id="buttonGroup1" alignment="right" overflowPosition={2}>
      <ButtonGroup2-Button id="3a6b5" styleVariant="outline" text="Cancel">
        <Event
          event="click"
          method="hide"
          params={{ ordered: [] }}
          pluginId="reviewModal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
      <ButtonGroup2-Button id="96884" styleVariant="solid" text="Save">
        <Event
          enabled="{{ !photoBoundingBox.boundingBoxes.find((tag) => !tag.label) }}"
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="postTags"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="hide"
          params={{ ordered: [] }}
          pluginId="reviewModal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ButtonGroup2-Button>
    </ButtonGroup2>
  </Footer>
  <Event
    event="hide"
    method="setValue"
    params={{
      ordered: [
        {
          value:
            "{\n  id: '',\n  photoName: '',\n  getUrl: '',\n  tags: [],\n}",
        },
      ],
    }}
    pluginId="modalPhoto"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
