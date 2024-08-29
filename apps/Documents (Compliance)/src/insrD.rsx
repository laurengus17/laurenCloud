<Container
  id="insrD"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  hidden=""
  margin="0 0 20px 0"
  marginType="normal"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle121"
      marginType="normal"
      value="#### Insr LTR D"
      verticalAlign="center"
    />
  </Header>
  <View id="379eb" viewKey="View 1">
    <CheckboxGroup
      id="checkboxGroup9"
      disabled="true"
      itemMode="static"
      label="Worker Compensation and Employers' Liability"
      labelPosition="top"
      labelWrap={true}
      marginType="normal"
      value="{{ [self.values[0]] }}"
    >
      <Option
        id="3a74b"
        label="Any Propriet or/Partner/Executive officer/Member Excluded?"
        value="Option 2"
      />
    </CheckboxGroup>
    <CheckboxGroup
      id="checkboxGroup7"
      disabled="true"
      itemMode="static"
      labelPosition="top"
      marginType="normal"
      value="{{ [self.values[0]] }}"
    >
      <Option id="3a74b" label="Subr WVD" value="Option 2" />
    </CheckboxGroup>
    <TextArea
      id="textArea4"
      autoResize={true}
      disabled="true"
      label="Policy Number"
      labelPosition="top"
      marginType="normal"
      minLines={2}
      placeholder="Enter value"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.workers_compensation_and_employers_liability.policy_number }}"
    />
    <CheckboxGroup
      id="checkboxGroup8"
      disabled="true"
      itemMode="static"
      labelPosition="top"
      marginType="normal"
      value="{{ [self.values[0]] }}"
    >
      <Option id="3a74b" label="Per Statute" value="Option 2" />
      <Option
        id="96cc0"
        disabled={false}
        hidden={false}
        label="Other"
        value="Option 3"
      />
    </CheckboxGroup>
    <TextInput
      id="textInput277"
      disabled="true"
      label="E.L. Each Accident"
      labelPosition="top"
      marginType="normal"
      placeholder="$"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.workers_compensation_and_employers_liability.limits.e_l_each_accident }}"
    />
    <TextInput
      id="textInput278"
      disabled="true"
      label="E.L. Disease - EA Employee"
      labelPosition="top"
      marginType="normal"
      placeholder="$"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.workers_compensation_and_employers_liability.limits.e_l_disease_ea_employee }}"
    />
    <TextInput
      id="textInput279"
      disabled="true"
      label="E.L. Disease - Policy Limit"
      labelPosition="top"
      marginType="normal"
      placeholder="$"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.workers_compensation_and_employers_liability.limits.e_l_disease_policy_limit }}"
    />
    <Date
      id="date32"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="true"
      iconBefore="bold/interface-calendar"
      label="Policy EXP"
      labelPosition="top"
      marginType="normal"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.workers_compensation_and_employers_liability.policy_eff }}"
    />
    <Date
      id="date31"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      disabled="true"
      iconBefore="bold/interface-calendar"
      label="Policy EFF"
      labelPosition="top"
      marginType="normal"
      style={{ ordered: [] }}
      value="{{ getSPDocuments.data.cois[i].visionCoi.workers_compensation_and_employers_liability.policy_exp }}"
    />
  </View>
</Container>
