<Container
  id="collapsibleContainer1"
  _gap={0}
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
  style={{ ordered: [{ background: "rgb(200, 56, 3)" }] }}
>
  <Header>
    <Text
      id="collapsibleTitle1"
      horizontalAlign="center"
      style={{ ordered: [] }}
      value="#### Stats"
      verticalAlign="center"
    />
    <ToggleButton
      id="collapsibleToggle1"
      horizontalAlign="right"
      iconForFalse="bold/interface-arrows-button-down"
      iconForTrue="bold/interface-arrows-button-up"
      iconPosition="replace"
      styleVariant="outline"
      text="{{ self.value ? 'Hide' : 'Show' }}"
      value="{{ collapsibleContainer1.showBody }}"
    >
      <Event
        event="change"
        method="setShowBody"
        params={{ ordered: [{ showBody: "{{ self.value }}" }] }}
        pluginId="collapsibleContainer1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </ToggleButton>
  </Header>
  <View id="03013" viewKey="View 1">
    <Container
      id="group1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="85b35" viewKey="View 1">
        <Text id="text3" value="## Open:" verticalAlign="center" />
        <NumberInput
          id="numberInput7"
          currency="USD"
          decimalPlaces=""
          disabled="true"
          inputValue={0}
          label=""
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          style={{
            ordered: [
              { fontSize: "h4Font" },
              { fontWeight: "h4Font" },
              { fontFamily: "h4Font" },
            ],
          }}
          textAlign="right"
          value="{{ countVar.data[0].Open }}"
        />
      </View>
    </Container>
    <Container
      id="group4"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="85b35" viewKey="View 1">
        <Text id="text9" value="## UNI:" verticalAlign="center" />
        <NumberInput
          id="numberInput10"
          currency="USD"
          decimalPlaces=""
          disabled="true"
          inputValue={0}
          label=""
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          style={{
            ordered: [
              { fontSize: "h4Font" },
              { fontWeight: "h4Font" },
              { fontFamily: "h4Font" },
            ],
          }}
          textAlign="right"
          value="{{ countVar.data[0].Uni }}"
        />
      </View>
    </Container>
    <Container
      id="group2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="85b35" viewKey="View 1">
        <NumberInput
          id="numberInput8"
          currency="USD"
          decimalPlaces=""
          disabled="true"
          inputValue={0}
          label=""
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          style={{
            ordered: [
              { fontSize: "h4Font" },
              { fontWeight: "h4Font" },
              { fontFamily: "h4Font" },
            ],
          }}
          textAlign="right"
          value="{{ countVar.data[0].Won }}"
        />
        <Text id="text5" value="## Won:" verticalAlign="center" />
      </View>
    </Container>
    <Container
      id="group5"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="85b35" viewKey="View 1">
        <Text id="text8" value="## IN:" verticalAlign="center" />
        <NumberInput
          id="numberInput11"
          currency="USD"
          decimalPlaces=""
          disabled="true"
          inputValue={0}
          label=""
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          style={{
            ordered: [
              { fontSize: "h4Font" },
              { fontWeight: "h4Font" },
              { fontFamily: "h4Font" },
            ],
          }}
          textAlign="right"
          value="{{ countVar.data[0].In }}"
        />
      </View>
    </Container>
    <Container
      id="group6"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="85b35" viewKey="View 1">
        <Text id="text7" value="## BF:" verticalAlign="center" />
        <NumberInput
          id="numberInput12"
          currency="USD"
          decimalPlaces=""
          disabled="true"
          inputValue={0}
          label=""
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          style={{
            ordered: [
              { fontSize: "h4Font" },
              { fontWeight: "h4Font" },
              { fontFamily: "h4Font" },
            ],
          }}
          textAlign="right"
          value="{{ countVar.data[0].BF }}"
        />
      </View>
    </Container>
    <Container
      id="group3"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="85b35" viewKey="View 1">
        <NumberInput
          id="numberInput9"
          currency="USD"
          decimalPlaces=""
          disabled="true"
          inputValue={0}
          label=""
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          style={{
            ordered: [
              { fontSize: "h4Font" },
              { fontWeight: "h4Font" },
              { fontFamily: "h4Font" },
            ],
          }}
          textAlign="right"
          value="{{ countVar.data[0].Lost }}"
        />
        <Text id="text6" value="## Lost:" verticalAlign="center" />
      </View>
    </Container>
    <Container
      id="group7"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      margin="0"
      padding="0"
      showBody={true}
      showBorder={false}
      style={{ ordered: [{ background: "rgba(255, 255, 255, 0)" }] }}
    >
      <View id="85b35" viewKey="View 1">
        <Text id="text10" value="## CL:" verticalAlign="center" />
        <NumberInput
          id="numberInput13"
          currency="USD"
          decimalPlaces=""
          disabled="true"
          inputValue={0}
          label=""
          labelPosition="top"
          placeholder="Enter value"
          showSeparators={true}
          style={{
            ordered: [
              { fontSize: "h4Font" },
              { fontWeight: "h4Font" },
              { fontFamily: "h4Font" },
            ],
          }}
          textAlign="right"
          value="{{ countVar.data[0].CL }}"
        />
      </View>
    </Container>
  </View>
</Container>
