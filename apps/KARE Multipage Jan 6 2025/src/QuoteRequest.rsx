<Screen
  id="QuoteRequest"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Quote Request"
  urlSlug=""
>
  <SqlQueryUnified
    id="CS3"
    clonedDemoResourceType="mssql"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    query={include("../lib/CS3.sql", "string")}
    resourceName="9db79853-31f4-4303-8cc5-060a414ac93b"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    updateSetValueDynamically={true}
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlTransformQuery
    id="filteredCust"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    query={include("../lib/filteredCust.sql", "string")}
    resourceName="SQL Transforms"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SMTPQuery
    id="Bags"
    attachment={["GraphicfileDropzone1"]}
    body={
      '<div><img src="https://i.imgur.com/Um2KKaw.png" alt="" width="816" height="210">&nbsp;</div>\n<h1>Quote Request</h1>\n<div>\n    <div data-testid="RetoolGrid:title">\n        <div data-onboarding-target="RetoolWidget:TextWidget2" data-testid="RetoolWidget:TextWidget2" data-scroll-target-id="title--0">\n            <div data-testid="title--0" data-scroll-target-id="title--0">\n                <div>\n                    <div>\n                        <div data-testid="Component::Text-title--0">\n                            <div>\n                                <div>\n                                    <h2>Customer Overview</h2>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:RFQEnteredBy">\n        <div data-onboarding-target="RetoolWidget:TextInputWidget2" data-testid="RetoolWidget:TextInputWidget2" data-scroll-target-id="RFQEnteredBy--0">\n            <div data-testid="RFQEnteredBy--0" data-scroll-target-id="RFQEnteredBy--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div><strong>Entered By</strong></div>\n                    </div>\n                    <div>\n                        <div role="group" aria-disabled="true">{{RFQEnteredBy.value}}</div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:SubmissionTimeStamp">\n        <div data-onboarding-target="RetoolWidget:DateTimeWidget" data-testid="RetoolWidget:DateTimeWidget" data-scroll-target-id="SubmissionTimeStamp--0">\n            <div data-testid="SubmissionTimeStamp--0" data-scroll-target-id="SubmissionTimeStamp--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Submission Date</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div role="group" aria-disabled="true">\n                                <div>{{SubmissionTimeStamp.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:CustomerName">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="CustomerName--0">\n            <div data-testid="CustomerName--0" data-scroll-target-id="CustomerName--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Customer Name</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div data-testid="Widgets::SelectInputContainer_button">\n                                    <div data-value="">{{CustomerName.value}}</div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:COCCOA">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="COCCOA--0">\n            <div data-testid="COCCOA--0" data-scroll-target-id="COCCOA--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>COC Or COA?</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div data-testid="Widgets::SelectInputContainer_button">\n                                    <div data-value="">{{COC_COA.value}}</div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:title2">\n        <div data-onboarding-target="RetoolWidget:TextWidget2" data-testid="RetoolWidget:TextWidget2" data-scroll-target-id="title2--0">\n            <div data-testid="title2--0" data-scroll-target-id="title2--0">\n                <div>\n                    <div>\n                        <div data-testid="Component::Text-title2--0">\n                            <div>\n                                <div>\n                                    <h2>Product Overview</h2>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:itemNumber">\n        <div data-onboarding-target="RetoolWidget:TextInputWidget2" data-testid="RetoolWidget:TextInputWidget2" data-scroll-target-id="itemNumber--0">\n            <div data-testid="itemNumber--0" data-scroll-target-id="itemNumber--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div><strong>Item number</strong></div>\n                    </div>\n                    <div>\n                        <div role="group" aria-disabled="false">{{itemNumber.value}}</div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:itemName">\n        <div data-onboarding-target="RetoolWidget:TextInputWidget2" data-testid="RetoolWidget:TextInputWidget2" data-scroll-target-id="itemName--0">\n            <div data-testid="itemName--0" data-scroll-target-id="itemName--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Item name</strong></div>\n                    </div>\n                    <div>\n                        <div role="group" aria-disabled="false">{{itemName.value}}</div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:productType">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="productType--0">\n            <div data-testid="productType--0" data-scroll-target-id="productType--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Product type</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div data-testid="Widgets::SelectInputContainer_button">\n                                    <div data-value="">{{productType.value}}</div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:printType">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="printType--0">\n            <div data-testid="printType--0" data-scroll-target-id="printType--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Print type</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div data-testid="Widgets::SelectInputContainer_button">\n                                    <div data-value="">{{printType.value}}</div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:Laminated">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="Laminated--0">\n            <div data-testid="Laminated--0" data-scroll-target-id="Laminated--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Laminated</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div data-testid="Widgets::SelectInputContainer_button">\n                                    <div data-value="">{{Laminated.value}}</div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:loadMethod">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="loadMethod--0">\n            <div data-testid="loadMethod--0" data-scroll-target-id="loadMethod--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Load method</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div data-testid="Widgets::SelectInputContainer_button">\n                                    <div data-value="">{{loadMethod.value}}</div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:shippingTerms">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="shippingTerms--0">\n            <div data-testid="shippingTerms--0" data-scroll-target-id="shippingTerms--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div><br><strong>Shipping terms</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div>{{shippingTerms.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:ShippingZipCode">\n        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="ShippingZipCode--0">\n            <div data-testid="ShippingZipCode--0" data-scroll-target-id="ShippingZipCode--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Shipping Zip Code</strong></div>\n                    </div>\n                    <div>\n                        <div role="group" aria-disabled="false">{{ShippingZipCode.value}}</div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:PurchaseUnitofMeasure">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="PurchaseUnitofMeasure--0">\n            <div data-testid="PurchaseUnitofMeasure--0" data-scroll-target-id="PurchaseUnitofMeasure--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Purchase Unit of Measure</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div>{{PurchaseUnitofMeasure.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:title3">\n        <div data-onboarding-target="RetoolWidget:TextWidget2" data-testid="RetoolWidget:TextWidget2" data-scroll-target-id="title3--0">\n            <div data-testid="title3--0" data-scroll-target-id="title3--0">\n                <div>\n                    <div>\n                        <div data-testid="Component::Text-title3--0">\n                            <div>\n                                <div>\n                                    <h2>Film Specification</h2>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:materialBlend">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="materialBlend--0">\n            <div data-testid="materialBlend--0" data-scroll-target-id="materialBlend--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div><strong>Material blend</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div>{{materialBlend.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:construction">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="construction--0">\n            <div data-testid="construction--0" data-scroll-target-id="construction--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Construction</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div>{{construction.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:gauge">\n        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="gauge--0">\n            <div data-testid="gauge--0" data-scroll-target-id="gauge--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Gauge</strong></div>\n                    </div>\n                    <div>\n                        <div role="group" aria-disabled="false">\n                            <div>{{gauge.value}}</div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:color">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="color--0">\n            <div data-testid="color--0" data-scroll-target-id="color--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Film Color</strong></div>\n                        <div>{{color.value}}</div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:TargetOpacity">\n        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="TargetOpacity--0">\n            <div data-testid="TargetOpacity--0" data-scroll-target-id="TargetOpacity--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Target Opacity</strong></div>\n                    </div>\n                    <div>\n                        <div role="group" aria-disabled="false">\n                            <div>{{TargetOpacity.value}}</div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:barrierRequirement">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="barrierRequirement--0">\n            <div data-testid="barrierRequirement--0" data-scroll-target-id="barrierRequirement--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Barrier requirement</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div>{{barrierRequirement.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:barrierRequirementDetails">\n        <div data-onboarding-target="RetoolWidget:TextAreaWidget" data-testid="RetoolWidget:TextAreaWidget" data-scroll-target-id="barrierRequirementDetails--0">\n            <div data-testid="barrierRequirementDetails--0" data-scroll-target-id="barrierRequirementDetails--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Barrier Requirement Details</strong></div>\n                    </div>\n                    <div>{{barrierRequirementDetails.value}}</div>\n                </div>\n            </div>\n        </div>\n    </div>\n    <h2>Bag Specification</h2>\n</div>\n<div>\n    <div>\n        <div data-testid="RetoolGrid::Main">\n            <div data-grid-id="container1__46500__0__body" data-testid="retool-grid-content">\n                <div>\n                    <div data-testid="RetoolGrid:BagWidth">\n                        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="BagWidth--0">\n                            <div data-testid="BagWidth--0" data-scroll-target-id="BagWidth--0">\n                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                    <div data-subcomponent-id="Label">\n                                        <div><strong>Width</strong></div>\n                                        <div><strong>Inches</strong></div>\n                                    </div>\n                                    <div>\n                                        <div role="group" aria-disabled="false">\n                                            <div>&nbsp;{{BagWidth.value}}</div>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n                <div>\n                    <div data-testid="RetoolGrid:BagLength">\n                        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="BagLength--0">\n                            <div data-testid="BagLength--0" data-scroll-target-id="BagLength--0">\n                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                    <div data-subcomponent-id="Label">\n                                        <div>&nbsp;</div>\n                                        <div><strong>Length</strong></div>\n                                        <div><strong>Inches</strong></div>\n                                    </div>\n                                    <div>\n                                        <div role="group" aria-disabled="false">\n                                            <div>&nbsp;{{BagLength.value}}</div>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n                <div>\n                    <div data-testid="RetoolGrid:gusset">\n                        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="gusset--0">\n                            <div data-testid="gusset--0" data-scroll-target-id="gusset--0">\n                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                    <div data-subcomponent-id="Label">\n                                        <div>&nbsp;</div>\n                                        <div><strong>Gusset</strong></div>\n                                    </div>\n                                    <div>\n                                        <div>\n                                            <div tabindex="-1" role="group" aria-disabled="false">\n                                                <div>&nbsp;{{gusset.value}}</div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n                <div>\n                    <div data-testid="RetoolGrid:lip">\n                        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="lip--0">\n                            <div data-testid="lip--0" data-scroll-target-id="lip--0">\n                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                    <div data-subcomponent-id="Label">\n                                        <div>&nbsp;</div>\n                                        <div><strong>Lip</strong></div>\n                                        <div><strong>Inches</strong></div>\n                                    </div>\n                                    <div>\n                                        <div role="group" aria-disabled="false">\n                                            <div>&nbsp;{{lip.value}}</div>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n                <div>\n                    <div data-testid="RetoolGrid:flip">\n                        <div data-onboarding-target="RetoolWidget:EditableNumberWidget" data-testid="RetoolWidget:EditableNumberWidget" data-scroll-target-id="flip--0">\n                            <div data-testid="flip--0" data-scroll-target-id="flip--0">\n                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                    <div data-subcomponent-id="Label">\n                                        <div>&nbsp;</div>\n                                        <div><strong>Flip</strong></div>\n                                    </div>\n                                    <div>\n                                        <div role="group">\n                                            <div>{{flip.value}}</div>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n                <div>\n                    <div data-testid="RetoolGrid:secondWebAttached">\n                        <div data-onboarding-target="RetoolWidget:CheckboxWidget2" data-testid="RetoolWidget:CheckboxWidget2" data-scroll-target-id="secondWebAttached--0">\n                            <div data-testid="secondWebAttached--0" data-scroll-target-id="secondWebAttached--0">\n                                <div>\n                                    <div>\n                                        <div data-checked="{{secondWebAttached.value}}" data-intermediate="false">&nbsp;</div>\n                                        <div data-checked="{{secondWebAttached.value}}" data-intermediate="false">{{secondWebAttached.value}}<strong>&nbsp;Second web attached</strong></div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n                <div>\n                    <div data-testid="RetoolGrid:zipper">\n                        <div data-onboarding-target="RetoolWidget:CheckboxWidget2" data-testid="RetoolWidget:CheckboxWidget2" data-scroll-target-id="zipper--0">\n                            <div data-testid="zipper--0" data-scroll-target-id="zipper--0">\n                                <div>\n                                    <div>\n                                        <div data-checked="{{zipper.value}}" data-intermediate="false">&nbsp;</div>\n                                        <div data-checked="{{zipper.value}}" data-intermediate="false">{{zipper.value}}<strong> Zipper</strong></div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n                <div>\n                    <div data-testid="RetoolGrid:putUpType">\n                        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="putUpType--0">\n                            <div data-testid="putUpType--0" data-scroll-target-id="putUpType--0">\n                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                    <div data-subcomponent-id="Label">\n                                        <div>&nbsp;</div>\n                                        <div><strong>Put up</strong></div>\n                                    </div>\n                                    <div>\n                                        <div>\n                                            <div tabindex="-1" role="group" aria-disabled="false">\n                                                <div data-testid="Widgets::SelectInputContainer_button">\n                                                    <div>&nbsp;{{putUpType.value}}</div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n                <div>\n                    <div data-testid="RetoolGrid:bagsPerWicket">\n                        <div data-onboarding-target="RetoolWidget:EditableNumberWidget" data-testid="RetoolWidget:EditableNumberWidget" data-scroll-target-id="bagsPerWicket--0">\n                            <div data-testid="bagsPerWicket--0" data-scroll-target-id="bagsPerWicket--0">\n                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                    <div data-subcomponent-id="Label">\n                                        <div>&nbsp;</div>\n                                        <div><strong>Bags per bundle</strong></div>\n                                    </div>\n                                    <div>\n                                        <div role="group">\n                                            <div>{{bagsPerWicket.value}}</div>\n                                        </div>\n                                    </div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:container2">\n        <div data-onboarding-target="RetoolWidget:ContainerWidget2" data-testid="RetoolWidget:ContainerWidget2" data-scroll-target-id="container2--0">\n            <div data-testid="container2--0" data-scroll-target-id="container2--0">\n                <div>\n                    <div>\n                        <div data-testid="ContainerWidget_container2--0">\n                            <section>\n                                <header>\n                                    <div data-testid="RetoolGrid::Main">\n                                        <div data-grid-id="container2____0__header" data-testid="retool-grid-content">\n                                            <div>\n                                                <div data-testid="RetoolGrid:containerTitle2">\n                                                    <div data-onboarding-target="RetoolWidget:TextWidget2" data-testid="RetoolWidget:TextWidget2" data-scroll-target-id="containerTitle2--0">\n                                                        <div data-testid="containerTitle2--0" data-scroll-target-id="containerTitle2--0">\n                                                            <div>\n                                                                <div>\n                                                                    <div data-testid="Component::Text-containerTitle2--0">\n                                                                        <div>\n                                                                            <div>&nbsp;</div>\n                                                                            <div>&nbsp;</div>\n                                                                            <div>\n                                                                                <div data-testid="RetoolGrid:customerSampleType">\n                                                                                    <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="customerSampleType--0">\n                                                                                        <div data-testid="customerSampleType--0" data-scroll-target-id="customerSampleType--0">\n                                                                                            <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                                                <div data-subcomponent-id="Label">\n                                                                                                    <div><strong>Graphic Sample Provided</strong></div>\n                                                                                                </div>\n                                                                                                <div>\n                                                                                                    <div>\n                                                                                                        <div tabindex="-1" role="group" aria-disabled="false">\n                                                                                                            <div>{{customerSampleType.value}}</div>\n                                                                                                        </div>\n                                                                                                    </div>\n                                                                                                </div>\n                                                                                            </div>\n                                                                                        </div>\n                                                                                    </div>\n                                                                                </div>\n                                                                            </div>\n                                                                            <div>&nbsp;</div>\n                                                                            <div>\n                                                                                <div data-testid="RetoolGrid:printType2">\n                                                                                    <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="printType2--0">\n                                                                                        <div data-testid="printType2--0" data-scroll-target-id="printType2--0">\n                                                                                            <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                                                <div data-subcomponent-id="Label">\n                                                                                                    <div><strong>Print type</strong></div>\n                                                                                                </div>\n                                                                                                <div>\n                                                                                                    <div>\n                                                                                                        <div tabindex="-1" role="group" aria-disabled="false">\n                                                                                                            <div>{{printType2.value}}</div>\n                                                                                                        </div>\n                                                                                                    </div>\n                                                                                                </div>\n                                                                                            </div>\n                                                                                        </div>\n                                                                                    </div>\n                                                                                </div>\n                                                                            </div>\n                                                                            <div>\n                                                                                <div data-testid="RetoolGrid:WhiteOpacity">\n                                                                                    <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="WhiteOpacity--0">\n                                                                                        <div data-testid="WhiteOpacity--0" data-scroll-target-id="WhiteOpacity--0">\n                                                                                            <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                                                <div data-subcomponent-id="Label">\n                                                                                                    <div>&nbsp;</div>\n                                                                                                    <div><strong>White Opacity</strong></div>\n                                                                                                </div>\n                                                                                                <div>\n                                                                                                    <div>\n                                                                                                        <div tabindex="-1" role="group" aria-disabled="false">\n                                                                                                            <div>{{WhiteOpacity.value}}</div>\n                                                                                                        </div>\n                                                                                                    </div>\n                                                                                                </div>\n                                                                                            </div>\n                                                                                        </div>\n                                                                                    </div>\n                                                                                </div>\n                                                                            </div>\n                                                                            <div>\n                                                                                <div data-testid="RetoolGrid:numberOfSidesPrinted">\n                                                                                    <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="numberOfSidesPrinted--0">\n                                                                                        <div data-testid="numberOfSidesPrinted--0" data-scroll-target-id="numberOfSidesPrinted--0">\n                                                                                            <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                                                <div data-subcomponent-id="Label">\n                                                                                                    <div>&nbsp;</div>\n                                                                                                    <div><strong>Number of sides printed</strong></div>\n                                                                                                </div>\n                                                                                                <div>\n                                                                                                    <div>\n                                                                                                        <div tabindex="-1" role="group" aria-disabled="false">\n                                                                                                            <div>{{numberOfSidesPrinted.value}}</div>\n                                                                                                        </div>\n                                                                                                    </div>\n                                                                                                </div>\n                                                                                            </div>\n                                                                                        </div>\n                                                                                    </div>\n                                                                                </div>\n                                                                            </div>\n                                                                            <div>\n                                                                                <div data-testid="RetoolGrid:totalLineColors">\n                                                                                    <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="totalLineColors--0">\n                                                                                        <div data-testid="totalLineColors--0" data-scroll-target-id="totalLineColors--0">\n                                                                                            <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                                                <div data-subcomponent-id="Label">\n                                                                                                    <div>&nbsp;</div>\n                                                                                                    <div><strong>Total line colors</strong></div>\n                                                                                                </div>\n                                                                                                <div>\n                                                                                                    <div role="group" aria-disabled="false">\n                                                                                                        <div>{{totalLineColors.value}}</div>\n                                                                                                    </div>\n                                                                                                </div>\n                                                                                            </div>\n                                                                                        </div>\n                                                                                    </div>\n                                                                                </div>\n                                                                            </div>\n                                                                            <div>\n                                                                                <div data-testid="RetoolGrid:totalProcessColors">\n                                                                                    <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="totalProcessColors--0">\n                                                                                        <div data-testid="totalProcessColors--0" data-scroll-target-id="totalProcessColors--0">\n                                                                                            <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                                                <div data-subcomponent-id="Label">\n                                                                                                    <div>&nbsp;</div>\n                                                                                                    <div><strong>Total process color</strong></div>\n                                                                                                </div>\n                                                                                                <div>\n                                                                                                    <div role="group" aria-disabled="false">\n                                                                                                        <div>{{totalProcessColors.value}}</div>\n                                                                                                    </div>\n                                                                                                </div>\n                                                                                            </div>\n                                                                                        </div>\n                                                                                    </div>\n                                                                                </div>\n                                                                            </div>\n                                                                            <div>\n                                                                                <div data-testid="RetoolGrid:numberOfColors">\n                                                                                    <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="numberOfColors--0">\n                                                                                        <div data-testid="numberOfColors--0" data-scroll-target-id="numberOfColors--0">\n                                                                                            <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                                                <div data-subcomponent-id="Label">\n                                                                                                    <div>&nbsp;</div>\n                                                                                                    <div><strong>Number of colors</strong></div>\n                                                                                                </div>\n                                                                                                <div>{{numberOfColors.value}}</div>\n                                                                                                <div>&nbsp;</div>\n                                                                                                <div><strong>Notes</strong></div>\n                                                                                                <div>{{generalNotes.value}}</div>\n                                                                                            </div>\n                                                                                        </div>\n                                                                                    </div>\n                                                                                </div>\n                                                                            </div>\n                                                                            <p><img src="https://i.imgur.com/YtahQyk.png" alt="" width="816" height="290"></p>\n                                                                        </div>\n                                                                    </div>\n                                                                </div>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                </header>\n                            </section>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>'
    }
    bodyType="html"
    clonedDemoResourceType="retoolEmail"
    enableMockResponseTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    replyToEmail="{{current_user.email}}"
    resourceDisplayName="retool_email"
    resourceName="retool_email"
    showReplyTo={true}
    subject="Quote Request"
    toEmail="{{ noCSRAssigned.data }}"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="salescustpros"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/salescustpros.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlTransformQuery
    id="csrJoin"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    query={include("../lib/csrJoin.sql", "string")}
    resourceName="SQL Transforms"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlTransformQuery
    id="CJoin"
    enableMockResponseTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/CJoin.sql", "string")}
    resourceName="SQL Transforms"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="noCSRAssigned"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    query={include("../lib/noCSRAssigned.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="triggerEmail"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </JavascriptQuery>
  <SqlQueryUnified
    id="CSR2"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/CSR2.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="SP3"
    clonedDemoResourceType="mssql"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    query={include("../lib/SP3.sql", "string")}
    resourceName="9db79853-31f4-4303-8cc5-060a414ac93b"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    runWhenPageLoads={true}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    transformer="// Query results are available as the `data` variable
return formatDataAsArray(data)"
    updateSetValueDynamically={true}
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="addRow2"
    actionType="INSERT"
    changeset={
      '[{"key":"RFQEnteredBy","value":"{{RFQEnteredBy?.value}}"},{"key":"SubmissionTimeStamp","value":"{{SubmissionTimeStamp?.value}}"},{"key":"CustomerName","value":"{{CustomerName?.value}}"},{"key":"COCCOA","value":"{{COC_COA?.value}}"},{"key":"itemNumber","value":"{{itemNumber?.value}}"},{"key":"itemName","value":"{{itemName?.value}}"},{"key":"productType","value":"{{productType?.value}}"},{"key":"printType","value":"{{printType?.value}}"},{"key":"Laminated","value":"{{Laminated?.value}}"},{"key":"loadMethod","value":"{{loadMethod?.value}}"},{"key":"shippingTerms","value":"{{shippingTerms?.value}}"},{"key":"ShippingZipCode","value":"{{ShippingZipCode?.value}}"},{"key":"PurchaseUnitofMeasure","value":"{{PurchaseUnitofMeasure?.value}}"},{"key":"materialBlend","value":"{{ materialBlend?.value }}"},{"key":"construction","value":"{{ construction?.value }}"},{"key":"gauge","value":"{{ gauge?.value }}"},{"key":"color","value":"{{ color?.value }}"},{"key":"TargetOpacity","value":"{{ TargetOpacity?.value }}"},{"key":"barrierRequirement","value":"{{ barrierRequirement?.value }}"},{"key":"barrierRequirementDetails","value":"{{ barrierRequirementDetails?.value }}"},{"key":"BagWidth","value":"{{ BagWidth?.value }}"},{"key":"BagLength","value":"{{ BagLength?.value }}"},{"key":"gusset","value":"{{ gusset?.value }}"},{"key":"lip","value":"{{ lip?.value }}"},{"key":"flip","value":"{{ flip?.value }}"},{"key":"secondWebAttached","value":"{{ secondWebAttached?.value }}"},{"key":"zipper","value":"{{ zipper?.value }}"},{"key":"putUpType","value":"{{ putUpType?.value }}"},{"key":"bagsPerWicket","value":"{{ bagsPerWicket?.value }}"},{"key":"RollstockWidth","value":"{{RollstockWidth?.value}}"},{"key":"RollstockRepeat","value":"{{RollstockRepeat?.value}}"},{"key":"RollstockConstruction","value":"{{RollstockConstruction?.value}}"},{"key":"rollTargetMeasurement","value":"{{rollTargetMeasurement?.value}}"},{"key":"RollTargetMinimum","value":"{{RollTargetMinimum?.value}}"},{"key":"RollTargetMaximum","value":"{{RollTargetMaximum?.value}}"},{"key":"FinishedRollTarget","value":"{{FinishedRollTarget?.value}}"},{"key":"coreSize","value":"{{ coreSize?.value }}"},{"key":"polyWrap","value":"{{ polyWrap?.value }}"},{"key":"corePlugsRequirement","value":"{{ corePlugsRequirement?.value }}"},{"key":"maxSplicesPerRoll","value":"{{ maxSplicesPerRoll?.value }}"},{"key":"customerSampleType","value":"{{ customerSampleType?.value }}"},{"key":"GraphicfileDropzone1","value":"{{ GraphicfileDropzone1.value[\'0\'].url }}"},{"key":"printType2","value":"{{ printType2?.value }}"},{"key":"WhiteOpacity","value":"{{ WhiteOpacity?.value }}"},{"key":"numberOfSidesPrinted","value":"{{ numberOfSidesPrinted?.value }}"},{"key":"totalLineColors","value":"{{ totalLineColors?.value }}"},{"key":"totalProcessColors","value":"{{ totalProcessColors?.value }}"},{"key":"numberOfColors","value":"{{ numberOfColors?.value }}"},{"key":"generalNotes","value":"{{ generalNotes?.value }}"}]'
    }
    clonedDemoResourceType="retoolDb"
    editorMode="gui"
    enableMockResponseTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={'[{"key":"","value":"","operation":"="}]'}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    showUpdateSetValueDynamicallyToggle={false}
    tableName="quote_Request"
    transformer="// Query results are available as the `data` variable
return data"
    updateSetValueDynamically={true}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SMTPQuery
    id="Roll"
    attachment={["GraphicfileDropzone1"]}
    body={
      '<div><img src="https://i.imgur.com/Um2KKaw.png" alt="" width="816" height="210">&nbsp;</div>\n<h1>Quote Request</h1>\n<div>\n    <div data-testid="RetoolGrid:title">\n        <div data-onboarding-target="RetoolWidget:TextWidget2" data-testid="RetoolWidget:TextWidget2" data-scroll-target-id="title--0">\n            <div data-testid="title--0" data-scroll-target-id="title--0">\n                <div>\n                    <div>\n                        <div data-testid="Component::Text-title--0">\n                            <div>\n                                <div>\n                                    <h2>Customer Overview</h2>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:RFQEnteredBy">\n        <div data-onboarding-target="RetoolWidget:TextInputWidget2" data-testid="RetoolWidget:TextInputWidget2" data-scroll-target-id="RFQEnteredBy--0">\n            <div data-testid="RFQEnteredBy--0" data-scroll-target-id="RFQEnteredBy--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div><strong>Entered By</strong></div>\n                    </div>\n                    <div>\n                        <div role="group" aria-disabled="true">{{RFQEnteredBy.value}}</div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:SubmissionTimeStamp">\n        <div data-onboarding-target="RetoolWidget:DateTimeWidget" data-testid="RetoolWidget:DateTimeWidget" data-scroll-target-id="SubmissionTimeStamp--0">\n            <div data-testid="SubmissionTimeStamp--0" data-scroll-target-id="SubmissionTimeStamp--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Submission Date</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div role="group" aria-disabled="true">\n                                <div>{{SubmissionTimeStamp.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:CustomerName">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="CustomerName--0">\n            <div data-testid="CustomerName--0" data-scroll-target-id="CustomerName--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Customer Name</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div data-testid="Widgets::SelectInputContainer_button">\n                                    <div data-value="">{{CustomerName.value}}</div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:COCCOA">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="COCCOA--0">\n            <div data-testid="COCCOA--0" data-scroll-target-id="COCCOA--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>COC Or COA?</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div data-testid="Widgets::SelectInputContainer_button">\n                                    <div data-value="">{{COC_COA.value}}</div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:title2">\n        <div data-onboarding-target="RetoolWidget:TextWidget2" data-testid="RetoolWidget:TextWidget2" data-scroll-target-id="title2--0">\n            <div data-testid="title2--0" data-scroll-target-id="title2--0">\n                <div>\n                    <div>\n                        <div data-testid="Component::Text-title2--0">\n                            <div>\n                                <div>\n                                    <h2>Product Overview</h2>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:itemNumber">\n        <div data-onboarding-target="RetoolWidget:TextInputWidget2" data-testid="RetoolWidget:TextInputWidget2" data-scroll-target-id="itemNumber--0">\n            <div data-testid="itemNumber--0" data-scroll-target-id="itemNumber--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div><strong>Item number</strong></div>\n                    </div>\n                    <div>\n                        <div role="group" aria-disabled="false">{{itemNumber.value}}</div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:itemName">\n        <div data-onboarding-target="RetoolWidget:TextInputWidget2" data-testid="RetoolWidget:TextInputWidget2" data-scroll-target-id="itemName--0">\n            <div data-testid="itemName--0" data-scroll-target-id="itemName--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Item name</strong></div>\n                    </div>\n                    <div>\n                        <div role="group" aria-disabled="false">{{itemName.value}}</div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:productType">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="productType--0">\n            <div data-testid="productType--0" data-scroll-target-id="productType--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Product type</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div data-testid="Widgets::SelectInputContainer_button">\n                                    <div data-value="">{{productType.value}}</div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:printType">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="printType--0">\n            <div data-testid="printType--0" data-scroll-target-id="printType--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Print type</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div data-testid="Widgets::SelectInputContainer_button">\n                                    <div data-value="">{{printType.value}}</div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:Laminated">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="Laminated--0">\n            <div data-testid="Laminated--0" data-scroll-target-id="Laminated--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Laminated</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div data-testid="Widgets::SelectInputContainer_button">\n                                    <div data-value="">{{Laminated.value}}</div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:loadMethod">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="loadMethod--0">\n            <div data-testid="loadMethod--0" data-scroll-target-id="loadMethod--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Load method</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div data-testid="Widgets::SelectInputContainer_button">\n                                    <div data-value="">{{loadMethod.value}}</div>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:shippingTerms">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="shippingTerms--0">\n            <div data-testid="shippingTerms--0" data-scroll-target-id="shippingTerms--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Shipping terms</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div>{{shippingTerms.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:ShippingZipCode">\n        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="ShippingZipCode--0">\n            <div data-testid="ShippingZipCode--0" data-scroll-target-id="ShippingZipCode--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Shipping Zip Code</strong></div>\n                    </div>\n                    <div>\n                        <div role="group" aria-disabled="false">{{ShippingZipCode.value}}</div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:PurchaseUnitofMeasure">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="PurchaseUnitofMeasure--0">\n            <div data-testid="PurchaseUnitofMeasure--0" data-scroll-target-id="PurchaseUnitofMeasure--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Purchase Unit of Measure</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div>{{PurchaseUnitofMeasure.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:title3">\n        <div data-onboarding-target="RetoolWidget:TextWidget2" data-testid="RetoolWidget:TextWidget2" data-scroll-target-id="title3--0">\n            <div data-testid="title3--0" data-scroll-target-id="title3--0">\n                <div>\n                    <div>\n                        <div data-testid="Component::Text-title3--0">\n                            <div>\n                                <div>\n                                    <h2>Film Specification</h2>\n                                </div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:materialBlend">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="materialBlend--0">\n            <div data-testid="materialBlend--0" data-scroll-target-id="materialBlend--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div><strong>Material blend</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div>{{materialBlend.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:construction">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="construction--0">\n            <div data-testid="construction--0" data-scroll-target-id="construction--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Construction</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div>{{construction.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:gauge">\n        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="gauge--0">\n            <div data-testid="gauge--0" data-scroll-target-id="gauge--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Gauge</strong></div>\n                    </div>\n                    <div>\n                        <div role="group" aria-disabled="false">\n                            <div>{{gauge.value}}</div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:color">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="color--0">\n            <div data-testid="color--0" data-scroll-target-id="color--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Film Color</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div>{{color.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:TargetOpacity">\n        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="TargetOpacity--0">\n            <div data-testid="TargetOpacity--0" data-scroll-target-id="TargetOpacity--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Target Opacity</strong></div>\n                    </div>\n                    <div>\n                        <div role="group" aria-disabled="false">\n                            <div>{{TargetOpacity.value}}</div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:barrierRequirement">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="barrierRequirement--0">\n            <div data-testid="barrierRequirement--0" data-scroll-target-id="barrierRequirement--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Barrier requirement</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div>{{barrierRequirement.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:barrierRequirementDetails">\n        <div data-onboarding-target="RetoolWidget:TextAreaWidget" data-testid="RetoolWidget:TextAreaWidget" data-scroll-target-id="barrierRequirementDetails--0">\n            <div data-testid="barrierRequirementDetails--0" data-scroll-target-id="barrierRequirementDetails--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Barrier Requirement Details</strong></div>\n                    </div>\n                    <div>{{barrierRequirementDetails.value}}</div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:container1">\n        <div data-onboarding-target="RetoolWidget:ContainerWidget2" data-testid="RetoolWidget:ContainerWidget2" data-scroll-target-id="container1--0">\n            <div data-testid="container1--0" data-scroll-target-id="container1--0">\n                <div>\n                    <div>\n                        <div data-testid="ContainerWidget_container1--0">\n                            <section>\n                                <header>\n                                    <div data-testid="RetoolGrid::Main">\n                                        <div data-grid-id="container1____0__header" data-testid="retool-grid-content">\n                                            <div>\n                                                <div data-testid="RetoolGrid:containerTitle1">\n                                                    <div data-onboarding-target="RetoolWidget:TextWidget2" data-testid="RetoolWidget:TextWidget2" data-scroll-target-id="containerTitle1--0">\n                                                        <div data-testid="containerTitle1--0" data-scroll-target-id="containerTitle1--0">\n                                                            <div>\n                                                                <div>\n                                                                    <div data-testid="Component::Text-containerTitle1--0">\n                                                                        <div>\n                                                                            <div>\n                                                                                <h2>Rollstock Specification</h2>\n                                                                            </div>\n                                                                        </div>\n                                                                    </div>\n                                                                </div>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                </header>\n                                <div>\n                                    <div>\n                                        <div data-testid="RetoolGrid::Main">\n                                            <div data-grid-id="container2__46500__0__body" data-testid="retool-grid-content">\n                                                <div>\n                                                    <div data-testid="RetoolGrid:RollstockWidth">\n                                                        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="RollstockWidth--0">\n                                                            <div data-testid="RollstockWidth--0" data-scroll-target-id="RollstockWidth--0">\n                                                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                    <div data-subcomponent-id="Label">\n                                                                        <div><strong>Width</strong></div>\n                                                                    </div>\n                                                                    <div>\n                                                                        <div role="group" aria-disabled="false">\n                                                                            <div>{{RollstockWidth.value}}</div>\n                                                                        </div>\n                                                                    </div>\n                                                                </div>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                                <div>\n                                                    <div data-testid="RetoolGrid:RollstockRepeat">\n                                                        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="RollstockRepeat--0">\n                                                            <div data-testid="RollstockRepeat--0" data-scroll-target-id="RollstockRepeat--0">\n                                                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                    <div data-subcomponent-id="Label">\n                                                                        <div>&nbsp;</div>\n                                                                        <div><strong>Repeat</strong></div>\n                                                                    </div>\n                                                                    <div>\n                                                                        <div role="group" aria-disabled="false">\n                                                                            <div>{{RollstockRepeat.value}}</div>\n                                                                        </div>\n                                                                    </div>\n                                                                </div>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                                <div>\n                                                    <div data-testid="RetoolGrid:RollstockConstruction">\n                                                        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="RollstockConstruction--0">\n                                                            <div data-testid="RollstockConstruction--0" data-scroll-target-id="RollstockConstruction--0">\n                                                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                    <div data-subcomponent-id="Label">\n                                                                        <div>&nbsp;</div>\n                                                                        <div><strong>Construction</strong></div>\n                                                                    </div>\n                                                                    <div>\n                                                                        <div>\n                                                                            <div tabindex="-1" role="group" aria-disabled="false">\n                                                                                <div>{{RollstockConstruction.value}}</div>\n                                                                            </div>\n                                                                        </div>\n                                                                    </div>\n                                                                </div>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                                <div>\n                                                    <div data-testid="RetoolGrid:rollTargetMeasurement">\n                                                        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="rollTargetMeasurement--0">\n                                                            <div data-testid="rollTargetMeasurement--0" data-scroll-target-id="rollTargetMeasurement--0">\n                                                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                    <div data-subcomponent-id="Label">\n                                                                        <div>&nbsp;</div>\n                                                                        <div><strong>Roll target measurement</strong></div>\n                                                                        <div>{{rollTargetMeasurement.value}}</div>\n                                                                    </div>\n                                                                    <div>&nbsp;</div>\n                                                                </div>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                                <div>\n                                                    <div data-testid="RetoolGrid:RollTargetMinimum">\n                                                        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="RollTargetMinimum--0">\n                                                            <div data-testid="RollTargetMinimum--0" data-scroll-target-id="RollTargetMinimum--0">\n                                                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                    <div data-subcomponent-id="Label">\n                                                                        <div><strong>Finished Roll Minimum LBs</strong></div>\n                                                                    </div>\n                                                                    <div>\n                                                                        <div role="group" aria-disabled="false">\n                                                                            <div>{{RollTargetMinimum.value}}</div>\n                                                                        </div>\n                                                                    </div>\n                                                                </div>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                                <div>\n                                                    <div data-testid="RetoolGrid:RollTargetMaximum">\n                                                        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="RollTargetMaximum--0">\n                                                            <div data-testid="RollTargetMaximum--0" data-scroll-target-id="RollTargetMaximum--0">\n                                                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                    <div data-subcomponent-id="Label">\n                                                                        <div>&nbsp;</div>\n                                                                        <div><strong>Finished Roll Maximum LBs</strong></div>\n                                                                    </div>\n                                                                    <div>\n                                                                        <div role="group" aria-disabled="false">\n                                                                            <div>{{RollTargetMaximum.value}}</div>\n                                                                        </div>\n                                                                    </div>\n                                                                </div>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                                <div>\n                                                    <div data-testid="RetoolGrid:FinishedRollTarget">\n                                                        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="FinishedRollTarget--0">\n                                                            <div data-testid="FinishedRollTarget--0" data-scroll-target-id="FinishedRollTarget--0">\n                                                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                    <div data-subcomponent-id="Label">\n                                                                        <div>&nbsp;</div>\n                                                                        <div><strong>FInished Roll Target LBs</strong></div>\n                                                                    </div>\n                                                                    <div>\n                                                                        <div role="group" aria-disabled="false">\n                                                                            <div>{{FinishedRollTarget.value}}</div>\n                                                                        </div>\n                                                                    </div>\n                                                                </div>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                                <div>\n                                                    <div data-testid="RetoolGrid:coreSize">\n                                                        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="coreSize--0">\n                                                            <div data-testid="coreSize--0" data-scroll-target-id="coreSize--0">\n                                                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                    <div data-subcomponent-id="Label">\n                                                                        <div>&nbsp;</div>\n                                                                        <div><strong>Core size</strong></div>\n                                                                    </div>\n                                                                    <div>\n                                                                        <div>\n                                                                            <div tabindex="-1" role="group" aria-disabled="false">\n                                                                                <div>{{coreSize.value}}</div>\n                                                                            </div>\n                                                                        </div>\n                                                                    </div>\n                                                                </div>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                                <div>\n                                                    <div data-testid="RetoolGrid:polyWrap">\n                                                        <div data-onboarding-target="RetoolWidget:CheckboxWidget2" data-testid="RetoolWidget:CheckboxWidget2" data-scroll-target-id="polyWrap--0">\n                                                            <div data-testid="polyWrap--0" data-scroll-target-id="polyWrap--0">\n                                                                <div>\n                                                                    <div>\n                                                                        <div data-checked="{{polyWrap.value}}" data-intermediate="false">&nbsp;</div>\n                                                                        <div data-checked="{{polyWrap.value}}" data-intermediate="false">{{polyWrap.value}}<strong> Poly wrap</strong></div>\n                                                                    </div>\n                                                                </div>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                                <div>\n                                                    <div data-testid="RetoolGrid:corePlugsRequirement">\n                                                        <div data-onboarding-target="RetoolWidget:CheckboxWidget2" data-testid="RetoolWidget:CheckboxWidget2" data-scroll-target-id="corePlugsRequirement--0">\n                                                            <div data-testid="corePlugsRequirement--0" data-scroll-target-id="corePlugsRequirement--0">\n                                                                <div>\n                                                                    <div>\n                                                                        <div data-checked="{{corePlugsRequirement.value}}" data-intermediate="false">&nbsp;</div>\n                                                                        <div data-checked="{{corePlugsRequirement.value}}" data-intermediate="false">{{corePlugsRequirement.value}}<strong> Core plugs requirement</strong></div>\n                                                                    </div>\n                                                                </div>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                                <div>\n                                                    <div data-testid="RetoolGrid:maxSplicesPerRoll">\n                                                        <div data-onboarding-target="RetoolWidget:EditableNumberWidget" data-testid="RetoolWidget:EditableNumberWidget" data-scroll-target-id="maxSplicesPerRoll--0">\n                                                            <div data-testid="maxSplicesPerRoll--0" data-scroll-target-id="maxSplicesPerRoll--0">\n                                                                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                                                                    <div data-subcomponent-id="Label">\n                                                                        <div>&nbsp;</div>\n                                                                        <div><strong>Max splices per roll</strong></div>\n                                                                    </div>\n                                                                    <div>\n                                                                        <div role="group">\n                                                                            <div>{{maxSplicesPerRoll.value}}</div>\n                                                                        </div>\n                                                                    </div>\n                                                                </div>\n                                                            </div>\n                                                        </div>\n                                                    </div>\n                                                </div>\n                                            </div>\n                                        </div>\n                                    </div>\n                                </div>\n                            </section>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:customerSampleType">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="customerSampleType--0">\n            <div data-testid="customerSampleType--0" data-scroll-target-id="customerSampleType--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Graphic Sample Provided</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div>{{customerSampleType.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>&nbsp;</div>\n<div>\n    <div data-testid="RetoolGrid:printType2">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="printType2--0">\n            <div data-testid="printType2--0" data-scroll-target-id="printType2--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div><strong>Print type</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div>{{printType2.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:WhiteOpacity">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="WhiteOpacity--0">\n            <div data-testid="WhiteOpacity--0" data-scroll-target-id="WhiteOpacity--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>White Opacity</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div>{{WhiteOpacity.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:numberOfSidesPrinted">\n        <div data-onboarding-target="RetoolWidget:SelectWidget2" data-testid="RetoolWidget:SelectWidget2" data-scroll-target-id="numberOfSidesPrinted--0">\n            <div data-testid="numberOfSidesPrinted--0" data-scroll-target-id="numberOfSidesPrinted--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Number of sides printed</strong></div>\n                    </div>\n                    <div>\n                        <div>\n                            <div tabindex="-1" role="group" aria-disabled="false">\n                                <div>{{numberOfSidesPrinted.value}}</div>\n                            </div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:totalLineColors">\n        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="totalLineColors--0">\n            <div data-testid="totalLineColors--0" data-scroll-target-id="totalLineColors--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Total line colors</strong></div>\n                    </div>\n                    <div>\n                        <div role="group" aria-disabled="false">\n                            <div>{{totalLineColors.value}}</div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:totalProcessColors">\n        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="totalProcessColors--0">\n            <div data-testid="totalProcessColors--0" data-scroll-target-id="totalProcessColors--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Total process color</strong></div>\n                    </div>\n                    <div>\n                        <div role="group" aria-disabled="false">\n                            <div>{{totalProcessColors.value}}</div>\n                        </div>\n                    </div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<div>\n    <div data-testid="RetoolGrid:numberOfColors">\n        <div data-onboarding-target="RetoolWidget:NumberInputWidget" data-testid="RetoolWidget:NumberInputWidget" data-scroll-target-id="numberOfColors--0">\n            <div data-testid="numberOfColors--0" data-scroll-target-id="numberOfColors--0">\n                <div data-testid="WidgetLabelWrapper::FieldLabel">\n                    <div data-subcomponent-id="Label">\n                        <div>&nbsp;</div>\n                        <div><strong>Number of colors</strong></div>\n                    </div>\n                    <div>{{numberOfColors.value}}</div>\n                    <div>&nbsp;</div>\n                    <div><strong>Notes</strong></div>\n                    <div>{{generalNotes.value}}</div>\n                </div>\n            </div>\n        </div>\n    </div>\n</div>\n<p><img src="https://i.imgur.com/YtahQyk.png" alt="" width="816" height="290"></p>'
    }
    bodyType="html"
    clonedDemoResourceType="retoolEmail"
    enableMockResponseTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    replyToEmail="{{current_user.email}}"
    resourceDisplayName="retool_email"
    resourceName="retool_email"
    showReplyTo={true}
    subject="Quote Request"
    toEmail="{{ noCSRAssigned.data }}"
    transformer="// Query results are available as the `data` variable
return data"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="materialBlendQuery"
    clonedDemoResourceType="mssql"
    enableMockResponseTransformer={true}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query={include("../lib/materialBlendQuery.sql", "string")}
    resourceName="40549dae-5e5e-4830-8e37-f732ca2877e8"
    resourceTypeOverride=""
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <JavascriptQuery
    id="triggerEmail"
    notificationDuration={4.5}
    query={include("../lib/triggerEmail.js", "string")}
    resourceName="JavascriptQuery"
    showSuccessToaster={false}
  />
  <Function
    id="optionsLables"
    funcBody={include("../lib/optionsLables.js", "string")}
  />
  <State id="customProps" value="[]" />
  <Function id="bidVer" funcBody={include("../lib/bidVer.js", "string")} />
  <SqlQueryUnified
    id="bid"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query={include("../lib/bid.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    runWhenModelUpdates={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="ShippingLoc"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    mockResponseTransformer="return "
    query={include("../lib/ShippingLoc.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="form8SubmitToSalesShippingLoc"
    actionType="INSERT"
    changesetIsObject={true}
    changesetObject="{{ form8.data }}"
    clonedDemoResourceType="retoolDb"
    editorMode="gui"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="salesShippingLoc"
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="ShippingLoc"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="clear"
      params={{ ordered: [] }}
      pluginId="form8"
      type="widget"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="bagSpecs"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    enableTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/bagSpecs.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    runWhenModelUpdates={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="rollstockSpec"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/rollstockSpec.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    runWhenModelUpdates={false}
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="lamSpec"
    clonedDemoResourceType="retoolDb"
    enableMockResponseTransformer={true}
    isClonedDemoQuery={true}
    isMultiplayerEdited={false}
    mockResponseTransformer="return "
    query={include("../lib/lamSpec.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="a6415f22-ff39-442d-9783-9e330762a37d"
    runWhenModelUpdates={false}
    warningCodes={[]}
  />
  <Function
    id="specValues"
    funcBody={include("../lib/specValues.js", "string")}
  />
  <Include src="./header4.rsx" />
  <Include src="./modalFrame11.rsx" />
  <Include src="./modalFrame8.rsx" />
  <Frame
    id="$main4"
    _disclosedFields={{ array: [] }}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Form
      id="form7"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      requireValidation={true}
      showBody={true}
      showFooter={true}
      showHeader={true}
      style={{ ordered: [{ headerBackground: "rgb(200, 56, 3)" }] }}
    >
      <Body>
        <Text
          id="title"
          label="Title"
          labelPosition="top"
          value="## Customer Overview"
        />
        <TextInput
          id="RFQEnteredBy"
          disabled="true"
          label="Entered By"
          labelPosition="top"
          labelWrap={true}
          placeholder="Enter value"
          required={true}
          value="{{current_user.fullName}}"
        />
        <DateTime
          id="SubmissionTimeStamp"
          dateFormat="MMM d, yyyy"
          datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
          disabled="true"
          iconBefore="bold/interface-calendar"
          label="Submission Date"
          labelPosition="top"
          labelWrap={true}
          minuteStep={15}
          required={true}
          value="{{ new Date() }}"
        />
        <Switch
          id="switch3"
          label="{{ optionsLables.value[1].one }}"
          style={{
            ordered: [
              { checkedBackground: "rgb(11, 22, 42)" },
              { uncheckedBackground: "rgb(11, 22, 42)" },
            ],
          }}
          value="True"
        >
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="optionsLables"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Switch>
        <Switch
          id="switch4"
          disabled="{{ switch3.value == true }}"
          hidden="{{ switch3.value == true }}"
          label="{{ optionsLables.value[0].two }}"
          style={{
            ordered: [
              { checkedBackground: "rgb(11, 22, 42)" },
              { uncheckedBackground: "rgb(11, 22, 42)" },
            ],
          }}
          value=""
        >
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="optionsLables"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Switch>
        <Select
          id="CustomerName"
          captionByIndex=""
          colorByIndex={[]}
          data="{{ filteredCust.data }}"
          deprecatedLabels={[]}
          disabledByIndex={[]}
          disabledValues={[]}
          emptyMessage="No options"
          fallbackTextByIndex={[]}
          hiddenByIndex={[]}
          iconByIndex={[]}
          imageByIndex={[]}
          label="Customer Name"
          labelPosition="top"
          labels="{{ item.account_name }}"
          labelWrap={true}
          overlayMaxHeight={375}
          placeholder="Select options"
          required={true}
          showClear={true}
          showSelectionIndicator={true}
          tooltipByIndex={[]}
          values="{{ item.account_name }}"
        >
          <Option id="4dbec" value="Option 1" />
          <Option id="c570a" value="Option 2" />
          <Option id="bd28b" value="Option 3" />
          <Event
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="bid"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ switch4.value == false }}"
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="lamSpec"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ switch4.value == false }}"
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="rollstockSpec"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
          <Event
            enabled="{{ switch4.value == false }}"
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="bagSpecs"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <TextInput
          id="itemNumber"
          disabled="{{ switch3.value != true }}"
          hidden="{{ switch3.value != true }}"
          label="Item number"
          labelPosition="top"
          labelWrap={true}
          placeholder="Enter value"
          required={true}
        />
        <TextInput
          id="itemName"
          disabled="{{ switch3.value != true }}"
          hidden="{{ switch3.value != true }}"
          label="Item name"
          labelPosition="top"
          labelWrap={true}
          placeholder="Enter value"
          required={true}
        />
        <Select
          id="existingItem"
          data="{{ specValues.value }}"
          disabled="{{ switch4.value != false }}"
          emptyMessage="No options"
          hidden="{{ switch4.value != false }}"
          label="Item"
          labelPosition="top"
          labels="{{ item.item }}"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values="{{ item.item }}"
        />
        <TextInput
          id="estVol"
          label="Estimated Volume"
          labelPosition="top"
          placeholder="Enter value"
        />
        <Checkbox id="checkbox1" label="Bid" labelWidth="100" />
        <Select
          id="reasonforQuote"
          emptyMessage="No options"
          itemMode="static"
          label="Reason for Quote"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
        >
          <Option id="ac729" value="Option 1" />
          <Option id="a2676" value="Option 2" />
          <Option id="82446" value="Option 3" />
        </Select>
        <TextInput
          id="competitor"
          label="Competitor Name"
          labelPosition="top"
          placeholder="Enter value"
        />
        <Select
          id="bidNewOld"
          customValidation="{{ CustomerName.value ==  null ? 'Pick a Customer First' : '' }}"
          disabled="{{ checkbox1.value != true || CustomerName.value == null}}"
          emptyMessage="No options"
          hidden="{{ checkbox1.value != true }}"
          itemMode="static"
          label="New/Existing"
          labelPosition="top"
          overlayMaxHeight={375}
          placeholder="Select an option"
          required={true}
          showSelectionIndicator={true}
        >
          <Option id="bac70" value="New" />
          <Option id="b3000" value="Existing" />
          <Event
            enabled=""
            event="change"
            method="trigger"
            params={{ ordered: [] }}
            pluginId="bid"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Select>
        <TextInput
          id="newBid"
          disabled="true"
          hidden={'{{ bidNewOld.value != "New" }}'}
          label="Bid ID"
          labelPosition="top"
          placeholder="Enter value"
          value={
            '{{  CustomerName.selectedItem.id +"-"+moment().format(\'MMDDYYYY\')+"-"+bidVer.value}}'
          }
        />
        <Select
          id="select8"
          data="{{ bid.data }}"
          emptyMessage="No options"
          hidden={'{{ bidNewOld.value != "Existing" }}'}
          label="Existing Bid"
          labelPosition="top"
          labels={'{{ item.bidID+"-"+item.ver }}'}
          overlayMaxHeight={375}
          placeholder="Select an option"
          showSelectionIndicator={true}
          values={'{{ item.bidID+"-"+item.ver }}'}
        />
        <Include src="./tabbedContainer5.rsx" />
      </Body>
      <Footer>
        <Button
          id="button10"
          disabled="{{ tabbedContainer5.currentViewIndex == 0 }}"
          hidden=""
          style={{ ordered: [{ background: "rgb(200, 56, 3)" }] }}
          text="Back"
        >
          <Event
            event="click"
            method="showPreviousView"
            params={{ ordered: [] }}
            pluginId="tabbedContainer5"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="button9"
          disabled="{{ tabbedContainer5.currentViewIndex == 7 }}"
          hidden=""
          style={{ ordered: [{ background: "rgb(11, 22, 42)" }] }}
          text="Next"
        >
          <Event
            event="click"
            method="showNextVisibleView"
            params={{ ordered: [] }}
            pluginId="tabbedContainer5"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
        <Button
          id="formButton9"
          style={{ ordered: [{ background: "rgb(200, 56, 3)" }] }}
          submit={true}
          submitTargetId="form7"
          text="Submit"
        />
      </Footer>
      <Event
        event="submit"
        method="run"
        params={{ ordered: [{ src: "noCSRAssigned.trigger()" }] }}
        pluginId=""
        type="script"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Frame>
</Screen>
