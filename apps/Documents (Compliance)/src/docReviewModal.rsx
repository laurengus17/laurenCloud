<ModalFrame
  id="docReviewModal"
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
    <Text
      id="modalTitle1"
      value="### {{ fileToUpdate.value.docName }} - Review"
      verticalAlign="center"
    />
    <Alert
      id="alert24"
      description=""
      hidden="{{ !(fileToUpdate.value.currentStatus === 'APPROVED' || fileToUpdate.value.currentStatus === 'RESUBMIT') }}"
      title="{{ fileToUpdate.value.currentStatus === 'APPROVED' ? 'Approved' :  'Pending Resubmission' }}"
      type="{{ fileToUpdate.value.currentStatus === 'APPROVED' ? 'success' :  'info' }}"
    >
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateDocComplianceStatus"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Alert>
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
        pluginId="docReviewModal"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{\n  fileIds: [],\n  updateMessage: '',\n  complianceStatus: '',\n  docName: '',\n  docType: '',\n  fileUrl: '',\n  currentStatus: '',\n  resubmissionReasons: [],\n  tags: [],\n  entityType: 'FILE',\n  isWithinModal: false,\n}",
            },
          ],
        }}
        pluginId="fileToUpdate"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Alert
      id="alert25"
      description=""
      hidden="{{ !photoBoundingBox.boundingBoxes?.find((tag) => !tag.label) }}"
      title="Any tags without labels will not be saved"
      type="warning"
    />
    <BoundingBox
      id="photoBoundingBox"
      boundingBoxes="{{ fileToUpdate.value.tags.map((tag) => ({
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
            { pluginId: "fileToUpdate" },
            { targetId: null },
            {
              params: {
                ordered: [
                  {
                    value:
                      "{{ { \n  ...fileToUpdate.value, \n    tags: photoBoundingBox.boundingBoxes?.map((tag) => ({\n      id: (fileToUpdate.value.docName.includes('Vehicle') ? vehicleTags : applicantTags).value.find((option) =>  option.name === tag.label)?.id,\n      name: tag.label,\n      height: tag.height,\n      width: tag.width,\n      x: tag.x,\n      y: tag.y,\n      tagType: fileToUpdate.value.docName.includes('Vehicle') ? 'VEHICLES' : 'APPLICANT' \n    })),\n} }}",
                  },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "change" },
            { type: "datasource" },
            { method: "trigger" },
            { pluginId: "updateTags" },
            { targetId: null },
            { params: { ordered: [] } },
            { waitType: "debounce" },
            { waitMs: "0" },
            { enabled: "" },
          ],
        },
      ]}
      hidden="{{ fileToUpdate.value.docType === 'pdf' || fileToUpdate.value.entityType !== 'FILE' }}"
      imageUrl="{{ fileToUpdate.value.fileUrl }}"
      labels="{{ fileToUpdate.value.docName?.includes('Vehicle') ? vehicleTags.value.map((tag) => tag.name) : applicantTags.value.map((tag) => tag.name) }}"
      margin="4px 8px"
    />
    <PDFViewer
      id="pdfDisplay"
      hidden="{{ fileToUpdate.value.docType !== 'pdf' }}"
      showTopBar={true}
      src="{{ fileToUpdate.value.fileUrl }}"
    />
    <Image
      id="docImage"
      hidden="{{ fileToUpdate.value.entityType === 'FILE' || fileToUpdate.value.docType === 'pdf' }}"
      horizontalAlign="center"
      src="{{ fileToUpdate.value.fileUrl }}"
    />
  </Body>
  <Footer>
    <SplitButton
      id="rejectOptionsButton"
      _colorByIndex={["", "", ""]}
      _fallbackTextByIndex={["", "", ""]}
      _imageByIndex={["", "", ""]}
      _values={["", "", "Action 4"]}
      horizontalAlign="right"
      itemMode="static"
      marginType="normal"
      overlayMaxHeight={375}
      showSelectionIndicator={true}
      style={{ ordered: [] }}
      styleVariant="outline"
    >
      <Option id="ba9c6" label="Request Resubmission">
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ {...fileToUpdate.value, complianceStatus: 'RESUBMIT', isWithinModal: true} }}",
              },
            ],
          }}
          pluginId="fileToUpdate"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="hide"
          params={{ ordered: [] }}
          pluginId="docReviewModal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="show"
          params={{ ordered: [] }}
          pluginId="resubmissionModal"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="289fc" label="Not Applicable">
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ {...fileToUpdate.value, complianceStatus: 'NOTAPPLICABLE', isWithinModal: true} }}",
              },
            ],
          }}
          pluginId="fileToUpdate"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updateDocComplianceStatus"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Option id="afa88" disabled={false} hidden={false} label="Pending">
        <Event
          event="click"
          method="setValue"
          params={{
            ordered: [
              {
                value:
                  "{{ {...fileToUpdate.value, complianceStatus: 'PENDING', isWithinModal: true} }}",
              },
            ],
          }}
          pluginId="fileToUpdate"
          type="state"
          waitMs="0"
          waitType="debounce"
        />
        <Event
          event="click"
          method="trigger"
          params={{ ordered: [] }}
          pluginId="updateDocComplianceStatus"
          type="datasource"
          waitMs="0"
          waitType="debounce"
        />
      </Option>
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {...fileToUpdate.value, complianceStatus: 'APPROVED', isWithinModal: true} }}",
            },
          ],
        }}
        pluginId="fileToUpdate"
        targetId="6a489"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateDocComplianceStatus"
        targetId="6a489"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </SplitButton>
    <Button id="approvePhotoButton" text="Approve">
      <Event
        event="click"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "{{ {...fileToUpdate.value, complianceStatus: 'APPROVED', isWithinModal: true} }}",
            },
          ],
        }}
        pluginId="fileToUpdate"
        type="state"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="updateDocComplianceStatus"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Footer>
  <Event
    enabled="false"
    event="hide"
    method="setValue"
    params={{
      ordered: [
        {
          value:
            "{\n  fileIds: [],\n  updateMessage: '',\n  complianceStatus: '',\n  docName: '',\n  fileUrl: '',\n  currentStatus: '',\n  tags: [],\n  entityType: 'FILE',\n  isWithinModal: false,\n}",
        },
      ],
    }}
    pluginId="fileToUpdate"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
</ModalFrame>
