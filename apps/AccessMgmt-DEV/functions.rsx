<GlobalFunctions>
  <RESTQuery
    id="query_group_role"
    enableTransformer={true}
    query="groups/roles/{{ProjectSelection.value}}/{{main_table.selectedRow.data.group_email}}"
    resourceName="926ac78b-c92d-4f63-abc1-a0b19e8bab3c"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return JSON.parse(data.message)"
  />
  <RESTQuery
    id="query_project_name"
    enableTransformer={true}
    query="project"
    resourceName="926ac78b-c92d-4f63-abc1-a0b19e8bab3c"
    retoolVersion="2.90.11"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return JSON.parse(data.message)"
  />
  <RESTQuery
    id="query_group_members"
    enableTransformer={true}
    query="groups/members/{{main_table.selectedRow.data.group_email}}"
    resourceName="926ac78b-c92d-4f63-abc1-a0b19e8bab3c"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return JSON.parse(data.message)"
  />
  <RESTQuery
    id="query_user_membership"
    enableTransformer={true}
    query="users/memberships/{{main_table.selectedRow.data.email}}"
    resourceName="926ac78b-c92d-4f63-abc1-a0b19e8bab3c"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return JSON.parse(data.message)"
  />
  <RESTQuery
    id="query_consolidated_user_role"
    enableTransformer={true}
    query="users/consolidated_role/{{ProjectSelection.value}}/{{main_table.selectedRow.data.email}}"
    resourceName="926ac78b-c92d-4f63-abc1-a0b19e8bab3c"
    retoolVersion="2.90.11"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return JSON.parse(data.message)"
  />
  <SqlQueryUnified
    id="query_groups"
    query={include("./lib/query_groups.sql", "string")}
    resourceDisplayName="onboarding_db"
    resourceName="onboarding_db"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
  />
  <RESTQuery
    id="query_users"
    enableTransformer={true}
    query="users"
    resourceName="926ac78b-c92d-4f63-abc1-a0b19e8bab3c"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return JSON.parse(data.message)"
  />
</GlobalFunctions>
