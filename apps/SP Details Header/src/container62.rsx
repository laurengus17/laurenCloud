<Container
  id="container62"
  disabledByIndex={[]}
  footerPadding="4px 12px"
  headerPadding="0"
  hidden=""
  hiddenByIndex={[]}
  hoistFetching={true}
  iconByIndex={[]}
  iconPositionByIndex={[]}
  labels={[]}
  loading=""
  margin="0"
  marginType="normal"
  overflowType="hidden"
  padding="0"
  showBody={true}
  showBorder={false}
  showHeader="false"
  showHeaderBorder={false}
  tooltipByIndex={[]}
  viewKeys={[]}
  views={[]}
>
  <View id="2598f" viewKey="View 1">
    <Text
      id="heading4"
      heightType="fixed"
      imageWidth="fill"
      marginType="normal"
      overflowType="hidden"
      style={{ ordered: [] }}
      value="<h4>Status</h4>"
      verticalAlign="center"
    />
    <Tags
      id="applicantInfoStatusTag"
      allowWrap={true}
      colors=""
      hashColors={true}
      marginType="normal"
      style={{ ordered: [{ defaultBackground: "automatic" }] }}
      value="[
  {{
    getSPDetails.data.profileStatus === 'INPROGRESS' ? 'In Progress' :
    getSPDetails.data.profileStatus === 'INREVIEW' ? 'In Review' :
    getSPDetails.data.profileStatus === 'APPROVED' ? 'Approved' :
    getSPDetails.data.profileStatus === 'REJECTED' ? 'Rejected' :
    getSPDetails.data.profileStatus === 'INVITED' ? 'Invited' :
    getSPDetails.data.profileStatus === 'ESCALATION' ? 'Escalation' :
    getSPDetails.data.profileStatus === 'READYFORREVIEW' ? 'Ready For Review' :
    getSPDetails.data.profileStatus === 'COMPLIANT' ? 'Compliant' :
    getSPDetails.data.profileStatus === 'COACHING' ? 'Coaching' :
    getSPDetails.data.profileStatus === 'BANNED' ? 'Banned' :
    getSPDetails.data.profileStatus === 'ALIGNMENT' ? 'Alignment' : ''
  }}
]
"
    />
    <Spacer id="spacer1" margin="0" marginType="normal" />
    <Text
      id="text82"
      marginType="normal"
      value={
        'Current Stage: **{{ \ngetSPDetails.data.stageProgress.currentStage === "PROACTIVEHIRE" ? "Proactive Hire" : getSPDetails.data.stageProgress.currentStage === "REACTIVEHIRE" ? "Reactive Hire" : \ngetSPDetails.data.stageProgress.currentStage === "APPLICANTINFORMATION" ? "Applicant\'s Information" : \ngetSPDetails.data.stageProgress.currentStage === "BUSINESSINFORMATION" ? "Business Information" : \ngetSPDetails.data.stageProgress.currentStage === "RATESANDCOVERAGE" ? "Rates and Coverage" : \ngetSPDetails.data.stageProgress.currentStage === "PAYMENTS" ? "Payments" : \ngetSPDetails.data.stageProgress.currentStage === "TRADESANDEQUIPMENT" ? "Trades and Equipment" : \ngetSPDetails.data.stageProgress.currentStage === "DOCUMENTS" ? "Documents" : \ngetSPDetails.data.stageProgress.currentStage === "SIGNINGANDCOMPLIANCE" ? "Signing and Compliance" : \ngetSPDetails.data.stageProgress.currentStage === "APPLICATIONSUBMITTED" ? "Application Submitted" : \ngetSPDetails.data.stageProgress.currentStage === "SERVENGINEAPPDOWNLOADED" ? "ServEngine App Downloaded" : \ngetSPDetails.data.stageProgress.currentStage === "CODEOFCONDUCT" ? "Code of Conduct" : \ngetSPDetails.data.stageProgress.currentStage === "COMPLIANCECHECK" ? "Compliance Check" : \ngetSPDetails.data.stageProgress.currentStage === "REVISIONREQUESTED" ? "Revision Requested" : \ngetSPDetails.data.stageProgress.currentStage === "ALIGNMENTSCHEDULINGREQUESTED" ? "Scheduling Requested" : \ngetSPDetails.data.stageProgress.currentStage === "ALIGNMENTCALLSCHEDULED" ? "Alignment Call Scheduled" : \ngetSPDetails.data.stageProgress.currentStage === "ALIGNMENTCALLCOMPLETED" ? "Alignment Call Completed" : \ngetSPDetails.data.stageProgress.currentStage === "ALIGNMENTOFFICERREPORTCARD" ? "Alignment Officer Report Card" : \ngetSPDetails.data.stageProgress.currentStage === "FULLYCOMPLIANT" ? "Fully COmpliant" : \ngetSPDetails.data.stageProgress.currentStage === "PROBATION" ? "Probation" : \ngetSPDetails.data.stageProgress.currentStage === "COACHINGSCHEDULINGREQUESTED" ? "Coaching Scheduling Requested" : \ngetSPDetails.data.stageProgress.currentStage === "COACHINGCALLSCHEDULED" ? "Coaching Call Scheduled" : \ngetSPDetails.data.stageProgress.currentStage === "COACHINGCALLCOMPLETED" ? "Coaching Call Completed" : \ngetSPDetails.data.stageProgress.currentStage === "NEWESCALATION" ? "New Escalation" : \ngetSPDetails.data.stageProgress.currentStage === "ESCALATIONINREVIEW" ? "Escalation Review" : \ngetSPDetails.data.stageProgress.currentStage === "ALIGNMENTCALLCANCELLED" ? "Call Cancelled" : \ngetSPDetails.data.stageProgress.currentStage === "ALIGNMENTCALLINPROGRESS" ? "Call In-Progress" : \ngetSPDetails.data.stageProgress.currentStage === "ALIGNMENTCALLRESCHEDULEREQUESTED" ? "Request for Reschedule" : \ngetSPDetails.data.stageProgress.currentStage === "BANNED" ? "Banned" : "" }}**'
      }
      verticalAlign="center"
    />
    <Text
      id="text83"
      marginType="normal"
      value="Days in Stage: **{{ getSPDetails.data.stageProgress.daysInStage }}**"
      verticalAlign="center"
    />
    <Text
      id="text84"
      marginType="normal"
      value="Days Since Started: **{{ getSPDetails.data.stageProgress.daysSinceStarted }}**"
      verticalAlign="center"
    />
  </View>
</Container>
