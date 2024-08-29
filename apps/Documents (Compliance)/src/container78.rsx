<Container
  id="container78"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  margin="0 0 20px 0"
  marginType="normal"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle124"
      marginType="normal"
      value="#### Insr LTR A"
      verticalAlign="center"
    />
  </Header>
  <View id="379eb" viewKey="View 1">
    <CheckboxGroup
      id="checkboxGroup1"
      disabled="true"
      itemMode="static"
      label="Type of insurance"
      labelPosition="top"
      marginType="normal"
      value="{{ [self.values[0]] }}"
    >
      <Option id="cbccc" label="Commercial General Liability" value="1" />
      <Option id="3a74b" label="Claims-Made" value="2" />
      <Option id="b49bf" label="Occur" value="3" />
      <Option
        id="1ca25"
        disabled={false}
        hidden={false}
        label="Policy"
        value="4"
      />
      <Option
        id="5c642"
        disabled={false}
        hidden={false}
        label="Project"
        value="5"
      />
      <Option
        id="7e5b0"
        disabled={false}
        hidden={false}
        label="Locaction"
        value="6"
      />
    </CheckboxGroup>
    <CheckboxGroup
      id="checkboxGroup2"
      disabled="true"
      itemMode="static"
      labelPosition="top"
      marginType="normal"
      value="{{ [self.values[0]] }}"
    >
      <Option id="cbccc" label="Addl Insd" value="Option 1" />
      <Option id="3a74b" label="Subr WVD" value="Option 2" />
    </CheckboxGroup>
    <TextArea
      id="textArea1"
      autoResize={true}
      disabled="true"
      label="Policy Number"
      labelPosition="top"
      marginType="normal"
      minLines={2}
      placeholder="Enter value"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.commercial_general_liability.policy_number }}"
    />
    <TextInput
      id="textInput262"
      disabled="true"
      label="Each Occurrence"
      labelPosition="top"
      marginType="normal"
      placeholder="$"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.commercial_general_liability.limits.each_occurrence }}"
    />
    <TextInput
      id="textInput263"
      disabled="true"
      label="Damage to rented premises"
      labelPosition="top"
      marginType="normal"
      placeholder="$"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.commercial_general_liability.limits.damage_to_rented_premises }}"
    />
    <TextInput
      id="textInput264"
      disabled="true"
      label="Med Exp (Any one person)"
      labelPosition="top"
      marginType="normal"
      placeholder="$"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.commercial_general_liability.limits.med_exp }}"
    />
    <TextInput
      id="textInput265"
      disabled="true"
      label="Personal & ADV injury"
      labelPosition="top"
      marginType="normal"
      placeholder="$"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.commercial_general_liability.limits.personal_and_adv_injury }}"
    />
    <TextInput
      id="textInput266"
      disabled="true"
      label="General aggregate"
      labelPosition="top"
      marginType="normal"
      placeholder="$"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.commercial_general_liability.limits.general_aggregate }}"
    />
    <Date
      id="date25"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="true"
      iconBefore="bold/interface-calendar"
      label="Policy EFF"
      labelPosition="top"
      marginType="normal"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.commercial_general_liability.policy_eff }}"
    />
    <Date
      id="date26"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="true"
      iconBefore="bold/interface-calendar"
      label="Policy EXP"
      labelPosition="top"
      marginType="normal"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.commercial_general_liability.policy_exp }}"
    />
    <TextInput
      id="textInput267"
      disabled="true"
      label="Products-comp/Op Agg"
      labelPosition="top"
      marginType="normal"
      placeholder="$"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.commercial_general_liability.limits.products_comp_op_agg }}"
    />
  </View>
</Container>
