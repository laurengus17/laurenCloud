<Container
  id="DriversLicense_Photos"
  disabled="{{ profileStatus.value === 'REJECTED' }}"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0 0 24px 0"
  marginType="normal"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="collapsibleTitle1"
      marginType="normal"
      value="#### Drivers License & Applicant Photos"
      verticalAlign="center"
    />
    <Alert
      id="alert8"
      description=""
      hidden="{{ profileStatus.value === 'REJECTED' }}"
      title="{{ `${validationsCounter.value.driversAndApplicantPhotos} Records Pending Validation` }}"
      type="{{validationsCounter.value.driversAndApplicantPhotos > 0 ? 'warning' : 'success'}}"
    />
    <ToggleButton
      id="collapsibleToggle1"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      marginType="normal"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ DriversLicense_Photos.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="DriversLicense_Photos"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="53784" viewKey="View 1">
    <Container
      id="DriverLicenseFront_Container"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden="true"
      marginType="normal"
      padding="12px"
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="DriversLicenseFront_Text"
          marginType="normal"
          value="##### License - Front"
          verticalAlign="center"
        />
      </Header>
      <View id="621b3" viewKey="View 1">
        <Image
          id="DriversLicenseFront_image"
          horizontalAlign="center"
          margin="0"
          marginType="normal"
          src="{{ documents.value.driversLicense.frontPhoto.file.getUrl }}"
          style={{ ordered: [{ borderRadius: "0px" }] }}
        >
          <Event
            event="click"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.driversLicense.frontPhoto.file.id],\n  docName: 'License - Front',\n  fileUrl: documents.value.driversLicense.frontPhoto.file.getUrl,\n  currentStatus: documents.value.driversLicense.frontPhoto.complianceStatus,\n  tags: documents.value.driversLicense.frontPhoto.tags,\n  isWithinModal: true,\n} }}",
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
            method="show"
            params={{ ordered: [] }}
            pluginId="docReviewModal"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Image>
      </View>
      <Footer>
        <Alert
          id="alert9"
          description=""
          hidden="{{ profileStatus.value === 'REJECTED' }}"
          title="{{documents.value.driversLicense.frontPhoto.complianceStatus}}"
          type="{{documents.value.driversLicense.frontPhoto.complianceStatus === 'APPROVED' ? 'success' : 'warning'}}"
        />
        <SplitButton
          id="splitButton15"
          _colorByIndex={["", "", "", ""]}
          _fallbackTextByIndex={["", "", "", ""]}
          _imageByIndex={["", "", "", ""]}
          _values={["", "", "", "Action 4"]}
          horizontalAlign="right"
          itemMode="static"
          marginType="normal"
          overlayMaxHeight={375}
          showSelectionIndicator={true}
        >
          <Option id="6a489" label="Approve">
            <Event
              event="click"
              method="setValue"
              params={{
                ordered: [
                  {
                    value:
                      "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.driversLicense.frontPhoto.file.id],\n  docName: 'License - Front',\n  fileUrl: documents.value.driversLicense.frontPhoto.file.getUrl,\n  complianceStatus: 'APPROVED',\n  currentStatus: documents.value.driversLicense.frontPhoto.complianceStatus,\n  isWithinModal: false,\n} }}",
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
          <Option id="ba9c6" label="Request Resubmission">
            <Event
              event="click"
              method="setValue"
              params={{
                ordered: [
                  {
                    value:
                      "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.driversLicense.frontPhoto.file.id],\n  docName: 'License - Front',\n  fileUrl: documents.value.driversLicense.frontPhoto.file.getUrl,\n  complianceStatus: 'RESUBMIT',\n  currentStatus: documents.value.driversLicense.frontPhoto.complianceStatus,\n  tags: documents.value.driversLicense.frontPhoto.tags,\n  isWithinModal: true,\n} }}",
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
                      "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.driversLicense.frontPhoto.file.id],\n  docName: 'License - Front',\n  fileUrl: documents.value.driversLicense.frontPhoto.file.getUrl,\n  complianceStatus: 'NOTAPPLICABLE',\n  currentStatus: documents.value.driversLicense.frontPhoto.complianceStatus,\n  isWithinModal: false,\n} }}",
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
                      "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.driversLicense.frontPhoto.file.id],\n  docName: 'License - Front',\n  fileUrl: documents.value.driversLicense.frontPhoto.file.getUrl,\n  complianceStatus: 'PENDING',\n  currentStatus: documents.value.driversLicense.frontPhoto.complianceStatus,\n  isWithinModal: false,\n} }}",
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
        </SplitButton>
      </Footer>
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setCurrentView"
        params={{ ordered: [{ viewKey: "DriversLicenseFront" }] }}
        pluginId="modalContainer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
    <Container
      id="DriverLicenseBack_Container"
      enableFullBleed={true}
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      heightType="fixed"
      hidden="true"
      marginType="normal"
      padding="12px"
      showBody={true}
      showFooter={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="DriversLicenseBack_Text"
          hidden="{{ profileStatus.value === 'REJECTED' }}"
          marginType="normal"
          value="##### License - Back"
          verticalAlign="center"
        />
      </Header>
      <View id="621b3" viewKey="View 1">
        <Image
          id="DriversLicenseBack_image"
          horizontalAlign="center"
          margin="0"
          marginType="normal"
          src="{{ documents.value.driversLicense.backPhoto.file.getUrl }}"
          style={{ ordered: [{ borderRadius: "0px" }] }}
        >
          <Event
            event="click"
            method="setValue"
            params={{
              ordered: [
                {
                  value:
                    "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.driversLicense.backPhoto.file.id],\n  docName: 'License - Back',\n  fileUrl: documents.value.driversLicense.backPhoto.file.getUrl,\n  currentStatus: documents.value.driversLicense.backPhoto.complianceStatus,\n  tags: documents.value.driversLicense.backPhoto.tags,\n  isWithinModal: true,\n} }}",
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
            method="show"
            params={{ ordered: [] }}
            pluginId="docReviewModal"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Image>
      </View>
      <Footer>
        <Alert
          id="alert14"
          description=""
          title="{{documents.value.driversLicense.backPhoto.complianceStatus}}"
          type="{{documents.value.driversLicense.backPhoto.complianceStatus === 'APPROVED' ? 'success' : 'warning'}}"
        />
        <SplitButton
          id="splitButton27"
          _colorByIndex={["", "", "", ""]}
          _fallbackTextByIndex={["", "", "", ""]}
          _imageByIndex={["", "", "", ""]}
          _values={["", "", "", "Action 4"]}
          horizontalAlign="right"
          itemMode="static"
          marginType="normal"
          overlayMaxHeight={375}
          showSelectionIndicator={true}
        >
          <Option id="6a489" label="Approve">
            <Event
              event="click"
              method="setValue"
              params={{
                ordered: [
                  {
                    value:
                      "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.driversLicense.backPhoto.file.id],\n  docName: 'License - Back',\n  fileUrl: documents.value.driversLicense.backPhoto.file.getUrl,\n  complianceStatus: 'APPROVED',\n  currentStatus: documents.value.driversLicense.backPhoto.complianceStatus,\n  isWithinModal: false,\n} }}",
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
          <Option id="ba9c6" label="Request Resubmission">
            <Event
              event="click"
              method="setValue"
              params={{
                ordered: [
                  {
                    value:
                      "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.driversLicense.backPhoto.file.id],\n  docName: 'License - Back',\n  fileUrl: documents.value.driversLicense.backPhoto.file.getUrl,\n  complianceStatus: 'RESUBMIT',  \n  currentStatus: documents.value.driversLicense.backPhoto.complianceStatus,\n  tags: documents.value.driversLicense.backPhoto.tags,\n  isWithinModal: true,\n} }}",
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
                      "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.driversLicense.backPhoto.file.id],\n  docName: 'License - Back',\n  fileUrl: documents.value.driversLicense.backPhoto.file.getUrl,\n  complianceStatus: 'NOTAPPLICABLE',\n  currentStatus: documents.value.driversLicense.backPhoto.complianceStatus,\n  isWithinModal: false,\n} }}",
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
                      "{{ {\n  ...fileToUpdate.value, \n  fileIds: [documents.value.driversLicense.backPhoto.file.id],\n  docName: 'License - Back',\n  fileUrl: documents.value.driversLicense.backPhoto.file.getUrl,\n  complianceStatus: 'PENDING',\n  currentStatus: documents.value.driversLicense.backPhoto.complianceStatus,\n  isWithinModal: false,\n} }}",
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
        </SplitButton>
      </Footer>
      <Event
        event="click"
        method="show"
        params={{ ordered: [] }}
        pluginId="modalFrame"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="click"
        method="setCurrentView"
        params={{ ordered: [{ viewKey: "DriversLicenseBack" }] }}
        pluginId="modalContainer"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Container>
    <Include src="./ApplicantWaistUp_Container.rsx" />
    <Include src="./ApplicantHeadshot_Container.rsx" />
  </View>
</Container>
