<App>
  <Include src="./functions.rsx" />
  <AppStyles id="$appStyles" css={include("./lib/$appStyles.css", "string")} />
  <Frame id="$main" padding="8px 12px" sticky={false} type="main">
    <Text
      id="header"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      horizontalAlign="center"
      imageWidth="fill"
      style={{
        ordered: [
          { background: "rgba(107, 103, 103, 0.73)" },
          { color: "surfacePrimary" },
        ],
      }}
      value="### Access Management Tool"
      verticalAlign="center"
    />
    <Divider id="divider1" _disclosedFields={{ array: [] }} />
    <Select
      id="ProjectSelection"
      _defaultValue={null}
      allowDeselect={true}
      automaticItemColors={true}
      captionByIndex=""
      colorByIndex=""
      data="{{ query_project_name.data }}"
      disabledByIndex=""
      fallbackTextByIndex=""
      hiddenByIndex=""
      iconByIndex=""
      imageByIndex=""
      label="Project"
      labels=""
      labelWidth="25
"
      overlayMaxHeight={375}
      placeholder="Select GCP Project"
      showSelectionIndicator={true}
      style={{ ordered: [{ background: "surfacePrimary" }] }}
      tooltipByIndex=""
      values="{{ item.project_name }}"
    />
    <RadioGroup
      id="RadioOption"
      _defaultValue={null}
      hidden="{{!ProjectSelection.value}}"
      itemMode="static"
      label="Select"
      labelCaption="Option"
      maintainSpaceWhenHidden={true}
      style={{ ordered: [{ uncheckedBackground: "surfacePrimary" }] }}
      value=""
    >
      <Option id="88f44" value="Groups" />
      <Option id="7f25d" value="Users" />
      <Event
        enabled="{{RadioOption.value=='Groups'}}"
        event="change"
        method="setData"
        params={{ ordered: [{ data: "{{query_groups.data}}" }] }}
        pluginId="main_table"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{RadioOption.value=='Users'}}"
        event="change"
        method="setData"
        params={{ ordered: [{ data: "{{query_users.data}}" }] }}
        pluginId="main_table"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled=""
        event="change"
        method="setHidden"
        params={{ ordered: [{ hidden: false }] }}
        pluginId="text1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="setData"
        params={{ ordered: [{ data: "[]" }] }}
        pluginId="table2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        event="change"
        method="setValue"
        params={{ ordered: [{ value: '""' }] }}
        pluginId="notification"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
    <Divider id="divider2" _disclosedFields={{ array: [] }} />
    <RadioGroup
      id="radioGroup1"
      _defaultValue={null}
      groupLayout="wrap"
      hidden="{{!RadioOption.value}}"
      hideLabel={true}
      itemMode="static"
      labelWidth="25
"
      maintainSpaceWhenHidden={true}
      value="{{ self.values[0] }}"
    >
      <Option id="2e695" value="Role" />
      <Option id="bb77a" value="Membership" />
      <Event
        enabled="{{radioGroup1.value=='Role'}}"
        event="change"
        method="setValue"
        params={{
          ordered: [{ value: "*Click on the row for access Details.*" }],
        }}
        pluginId="text1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{radioGroup1.value=='Membership'}}"
        event="change"
        method="setValue"
        params={{
          ordered: [{ value: "*Click on the row for membership Details.*" }],
        }}
        pluginId="text1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{RadioOption.value=='Groups' && radioGroup1.value=='Membership'}}"
        event="change"
        method="setData"
        params={{ ordered: [{ data: "{{query_group_members.data}}" }] }}
        pluginId="table2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{RadioOption.value=='Users' && radioGroup1.value=='Membership'}}"
        event="change"
        method="setData"
        params={{ ordered: [{ data: "{{query_user_membership.data}}" }] }}
        pluginId="table2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{RadioOption.value=='Groups' && radioGroup1.value=='Role'}}"
        event="change"
        method="setData"
        params={{ ordered: [{ data: "{{query_group_role.data}}" }] }}
        pluginId="table2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{RadioOption.value=='Users' && radioGroup1.value=='Role'}}"
        event="change"
        method="setData"
        params={{
          ordered: [{ data: "{{query_consolidated_user_role.data}}" }],
        }}
        pluginId="table2"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{RadioOption.value=='Groups' && radioGroup1.value=='Role'}}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "**Access for {{main_table.selectedRow.data.group_email}}**",
            },
          ],
        }}
        pluginId="notification"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{RadioOption.value=='Groups' && radioGroup1.value=='Membership'}}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value:
                "**Membership for {{main_table.selectedRow.data.group_email}}**",
            },
          ],
        }}
        pluginId="notification"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{RadioOption.value=='Users' && radioGroup1.value=='Role'}}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            { value: "**Access for {{main_table.selectedRow.data.email}}**" },
          ],
        }}
        pluginId="notification"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{RadioOption.value=='Users' && radioGroup1.value=='Membership'}}"
        event="change"
        method="setValue"
        params={{
          ordered: [
            {
              value: "**Membership for {{main_table.selectedRow.data.email}}**",
            },
          ],
        }}
        pluginId="notification"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
      <Event
        enabled="{{!main_table.selectedRow.data}}"
        event="change"
        method="setValue"
        params={{ ordered: [] }}
        pluginId="notification"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </RadioGroup>
    <Text
      id="text1"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      hidden="False"
      maintainSpaceWhenHidden={true}
      style={{ ordered: [{ color: "rgba(252, 16, 16, 1)" }] }}
      value="*Click on the row for access Details.*"
      verticalAlign="center"
    />
    <Text
      id="notification"
      _defaultValue=""
      _disclosedFields={{ array: [] }}
      hidden="false"
      maintainSpaceWhenHidden={true}
      verticalAlign="center"
    />
    <TableLegacy
      id="main_table"
      _columns={["group_email", "email"]}
      _columnVisibility={{ ordered: [{ group_email: true }, { email: true }] }}
      _compatibilityMode={false}
      columnColors={{
        ordered: [
          { actiontype: "" },
          { queryname: "" },
          { resourcename: "" },
          { pagename: "" },
          { _id: "" },
          { id: "" },
          { createdat: "" },
          { group_email: "" },
          { email: "" },
        ],
      }}
      columns={["group_email", "email"]}
      columnVisibility={{ ordered: [{ group_email: true }, { email: true }] }}
      customButtonName=""
      data="{{ query_groups.data }}"
      defaultSelectedRow="none"
      dynamicRowHeights={true}
      events={[
        {
          ordered: [
            { method: "setData" },
            { enabled: "" },
            { params: { ordered: [{ data: "{{query_groups.data}}" }] } },
            { targetId: null },
            { pluginId: "table2" },
            { waitType: "debounce" },
            { event: "rowClick" },
            { type: "widget" },
            { waitMs: "" },
          ],
        },
        {
          ordered: [
            { method: "setData" },
            {
              enabled:
                "{{RadioOption.value=='Users' && radioGroup1.value=='Role'}}",
            },
            {
              params: {
                ordered: [
                  {
                    data: "{{RadioOption.value=='Users' ? query_consolidated_user_role.data : query_groups.data}}",
                  },
                ],
              },
            },
            { targetId: null },
            { pluginId: "table2" },
            { waitType: "debounce" },
            { event: "rowClick" },
            { type: "widget" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { event: "rowClick" },
            { type: "widget" },
            { method: "setValue" },
            { pluginId: "notification" },
            { targetId: null },
            {
              params: {
                ordered: [
                  {
                    value:
                      "**Access for {{main_table.selectedRow.data.group_email}}**",
                  },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
            {
              enabled:
                "{{RadioOption.value=='Groups' && radioGroup1.value=='Role'}}",
            },
          ],
        },
        {
          ordered: [
            { event: "rowClick" },
            { type: "widget" },
            { method: "setValue" },
            { pluginId: "notification" },
            { targetId: null },
            {
              params: {
                ordered: [
                  {
                    value:
                      "**Membership for {{main_table.selectedRow.data.group_email}}**",
                  },
                ],
              },
            },
            { waitType: "debounce" },
            { waitMs: "0" },
            {
              enabled:
                "{{RadioOption.value=='Groups' && radioGroup1.value=='Membership'}}",
            },
          ],
        },
        {
          ordered: [
            { method: "setValue" },
            {
              enabled:
                "{{RadioOption.value=='Users' && radioGroup1.value=='Role'}}",
            },
            {
              params: {
                ordered: [
                  {
                    value:
                      "**Access for {{main_table.selectedRow.data.email}}**",
                  },
                ],
              },
            },
            { targetId: null },
            { pluginId: "notification" },
            { waitType: "debounce" },
            { event: "rowClick" },
            { type: "widget" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { method: "setValue" },
            {
              enabled:
                "{{RadioOption.value=='Users' && radioGroup1.value=='Membership'}}",
            },
            {
              params: {
                ordered: [
                  {
                    value:
                      "**Membership for {{main_table.selectedRow.data.email}}**",
                  },
                ],
              },
            },
            { targetId: null },
            { pluginId: "notification" },
            { waitType: "debounce" },
            { event: "rowClick" },
            { type: "widget" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { method: "setValue" },
            {
              enabled:
                "{{query_consolidated_user_role.data.length==0 && RadioOption.value=='Users' && radioGroup1.value=='Role'}}",
            },
            {
              params: {
                ordered: [
                  {
                    value:
                      "**No Access provided for {{main_table.selectedRow.data.email}}**",
                  },
                ],
              },
            },
            { targetId: null },
            { pluginId: "notification" },
            { waitType: "debounce" },
            { event: "rowClick" },
            { type: "widget" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { method: "setValue" },
            {
              enabled:
                "{{query_group_role.data.length==0 && RadioOption.value=='Groups' && radioGroup1.value=='Role'}}",
            },
            {
              params: {
                ordered: [
                  {
                    value:
                      "**No Access provided for {{main_table.selectedRow.data.group_email}}**",
                  },
                ],
              },
            },
            { targetId: null },
            { pluginId: "notification" },
            { waitType: "debounce" },
            { event: "rowClick" },
            { type: "widget" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { method: "setData" },
            {
              enabled:
                "{{RadioOption.value=='Groups' && radioGroup1.value=='Membership'}}",
            },
            { params: { ordered: [{ data: "{{query_group_members.data}}" }] } },
            { targetId: null },
            { pluginId: "table2" },
            { waitType: "debounce" },
            { event: "rowClick" },
            { type: "widget" },
            { waitMs: "0" },
          ],
        },
        {
          ordered: [
            { method: "setData" },
            {
              enabled:
                "{{RadioOption.value=='Users' && radioGroup1.value=='Membership'}}",
            },
            {
              params: { ordered: [{ data: "{{query_user_membership.data}}" }] },
            },
            { targetId: null },
            { pluginId: "table2" },
            { waitType: "debounce" },
            { event: "rowClick" },
            { type: "widget" },
            { waitMs: "0" },
          ],
        },
      ]}
      hidden="{{!main_table.data}}"
      maintainSpaceWhenHidden={true}
      overflowType="scroll"
      showColumnBorders={true}
      showPaginationOnTop={true}
      showRefreshButton={false}
      style={{
        ordered: [
          { headerBackground: "rgba(107, 103, 103, 0.73)" },
          { toolbarBackground: "rgba(107, 103, 103, 0.73)" },
        ],
      }}
      useDynamicColumnSettings={true}
    />
    <TableLegacy
      id="table2"
      _columns={["content-length", "content-type", "date", "alt-svc", "role"]}
      _columnVisibility={{
        ordered: [
          { role: true },
          { "content-length": true },
          { "content-type": true },
          { date: true },
          { "alt-svc": true },
        ],
      }}
      _compatibilityMode={false}
      columnColors={{
        ordered: [
          { "content-type": "" },
          { date: "" },
          { actiontype: "" },
          { queryname: "" },
          { role: "" },
          { resourcename: "" },
          { pagename: "" },
          { _id: "" },
          { "content-length": "" },
          { id: "" },
          { createdat: "" },
          { "alt-svc": "" },
          { email: "" },
        ],
      }}
      columns={["content-length", "content-type", "date", "alt-svc", "role"]}
      columnVisibility={{
        ordered: [
          { role: true },
          { "content-length": true },
          { "content-type": true },
          { date: true },
          { "alt-svc": true },
        ],
      }}
      customButtonName=""
      data=""
      defaultSelectedRow="none"
      doubleClickToEdit={true}
      emptyMessage=""
      events={[]}
      hidden="{{table2.displayedData.length==0}}"
      maintainSpaceWhenHidden={true}
      overflowType="scroll"
      showPaginationOnTop={true}
      showRefreshButton={false}
      style={{
        ordered: [
          { summaryBackground: "rgba(107, 103, 103, 0.73)" },
          { headerBackground: "rgba(107, 103, 103, 0.73)" },
        ],
      }}
    />
  </Frame>
</App>
