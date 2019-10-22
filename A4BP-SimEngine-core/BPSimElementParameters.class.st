Class {
	#name : #BPSimElementParameters,
	#superclass : #BPSimObject,
	#instVars : [
		'costParameters',
		'resourceParameters',
		'controlParameters',
		'vendorExtension',
		'propertyParameters',
		'priorityParameters',
		'elementRef',
		'timeParameters',
		'elementRefId'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #'as yet unclassified' }
BPSimElementParameters class >> annotation [
<MSEClass: #BPSimElementParameters  super: #BPSimObject >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #parser }
BPSimElementParameters class >> fillElementsIn: answer from: xmlDescription [
	"answer id: (xmlDescription attributeAt: 'id')."
	| visitor |
	visitor := BPSimParserBPSimElementParametersVisitor new.
	visitor element: answer.
	
	answer elementRefId: (self readString: xmlDescription at: 'elementRef').
	answer elementRef: answer elementRefId.

	self fillElementsIn: answer from: xmlDescription visitor: visitor.
	
	^ answer
]

{ #category : #visitor }
BPSimElementParameters >> accept: aVisitor [
	^ aVisitor visitBPSimElementParameters: self
]

{ #category : #'dsl-Resources' }
BPSimElementParameters >> availability [
	"availability role selection quantity"
	^ self availabilityResource
]

{ #category : #'dsl-Resources' }
BPSimElementParameters >> availabilityResource [
	"availability role selection quantity"
	^ self resourceParameters availability
]

{ #category : #getset }
BPSimElementParameters >> controlParameters [
	controlParameters ifNil: [ controlParameters := BPSimControlBuilder newElementParameters ].
	^ controlParameters
]

{ #category : #getset }
BPSimElementParameters >> controlParameters: acontrolParameters [
^ controlParameters := acontrolParameters
]

{ #category : #getset }
BPSimElementParameters >> costParameters [
	costParameters ifNil: [ costParameters := BPSimCostBuilder newElementParameters ].
	^ costParameters
]

{ #category : #getset }
BPSimElementParameters >> costParameters: acostParameters [
^ costParameters := acostParameters
]

{ #category : #getset }
BPSimElementParameters >> elementRef [
^ elementRef
]

{ #category : #getset }
BPSimElementParameters >> elementRef: aelementRef [
^ elementRef := aelementRef
]

{ #category : #getset }
BPSimElementParameters >> elementRefId [
^ elementRefId
]

{ #category : #getset }
BPSimElementParameters >> elementRefId: aelementRefId [
^ elementRefId := aelementRefId
]

{ #category : #'dsl-Time' }
BPSimElementParameters >> endTime [
	^ self historical vv + self processing vv
]

{ #category : #'dsl-Time' }
BPSimElementParameters >> historical [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self historicalTime
]

{ #category : #'dsl-Time' }
BPSimElementParameters >> historicalTime [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self timeParameters historicalTime

]

{ #category : #visitor }
BPSimElementParameters >> key [
^ self elementRef
]

{ #category : #getset }
BPSimElementParameters >> priorityParameters [
^ priorityParameters
]

{ #category : #getset }
BPSimElementParameters >> priorityParameters: apriorityParameters [
^ priorityParameters := apriorityParameters
]

{ #category : #'dsl-Control' }
BPSimElementParameters >> probability [
	^ self probabilityControl
]

{ #category : #'dsl-Control' }
BPSimElementParameters >> probabilityControl [
	^ self controlParameters probability
]

{ #category : #'dsl-Time' }
BPSimElementParameters >> processing [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self processingTime

]

{ #category : #'dsl-Time' }
BPSimElementParameters >> processingTime [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self timeParameters processingTime

]

{ #category : #getset }
BPSimElementParameters >> propertyParameters [
^ propertyParameters
]

{ #category : #getset }
BPSimElementParameters >> propertyParameters: apropertyParameters [
^ propertyParameters := apropertyParameters
]

{ #category : #'dsl-Resources' }
BPSimElementParameters >> quantity [
	"availability role selection quantity"
	^ self quantityResource
]

{ #category : #'dsl-Resources' }
BPSimElementParameters >> quantityResource [
	"availability role selection quantity"
	^ self resourceParameters quantity
]

{ #category : #'dsl-Time' }
BPSimElementParameters >> queue [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self queueTime

]

{ #category : #'dsl-Time' }
BPSimElementParameters >> queueTime [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self timeParameters queueTime

]

{ #category : #getset }
BPSimElementParameters >> resourceParameters [
	resourceParameters ifNil: [ resourceParameters := BPSimResourcesBuilder newElementParameters ].
	^ resourceParameters
]

{ #category : #getset }
BPSimElementParameters >> resourceParameters: aresourceParameters [
^ resourceParameters := aresourceParameters
]

{ #category : #'dsl-Time' }
BPSimElementParameters >> rework [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self reworkTime

]

{ #category : #'dsl-Time' }
BPSimElementParameters >> reworkTime [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self timeParameters reworkTime

]

{ #category : #'dsl-Resources' }
BPSimElementParameters >> role [
	"availability role selection quantity"
	^ self roleResource
]

{ #category : #'dsl-Resources' }
BPSimElementParameters >> roleResource [
	"availability role selection quantity"
	^ self resourceParameters role
]

{ #category : #'dsl-Resources' }
BPSimElementParameters >> selection [
	"availability role selection quantity"
	^ self selectionResource
]

{ #category : #'dsl-Resources' }
BPSimElementParameters >> selectionResource [
	"availability role selection quantity"
	^ self resourceParameters selection
]

{ #category : #'dsl-Time' }
BPSimElementParameters >> setUp [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self setUpTime
]

{ #category : #'dsl-Time' }
BPSimElementParameters >> setUpTime [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self timeParameters setUpTime

]

{ #category : #getset }
BPSimElementParameters >> timeParameters [
	timeParameters ifNil: [ timeParameters := BPSimTimerBuilder newElementParameters ].
	^ timeParameters
]

{ #category : #getset }
BPSimElementParameters >> timeParameters: atimeParameters [
^ timeParameters := atimeParameters
]

{ #category : #'dsl-Time' }
BPSimElementParameters >> transfer [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self transferTime

]

{ #category : #'dsl-Time' }
BPSimElementParameters >> transferTime [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self timeParameters transferTime

]

{ #category : #'dsl-Cost' }
BPSimElementParameters >> unitCost [
	^ self costParameters unitCost
]

{ #category : #'dsl-Time' }
BPSimElementParameters >> validation [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self validationTime 

]

{ #category : #'dsl-Time' }
BPSimElementParameters >> validationTime [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self timeParameters validationTime

]

{ #category : #getset }
BPSimElementParameters >> vendorExtension [
^ vendorExtension
]

{ #category : #getset }
BPSimElementParameters >> vendorExtension: avendorExtension [
^ vendorExtension := avendorExtension
]

{ #category : #'dsl-Time' }
BPSimElementParameters >> wait [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self waitTime

]

{ #category : #'dsl-Time' }
BPSimElementParameters >> waitTime [
	"validationTime queueTime transferTime waitTime reworkTime processingTime setUpTime historicalTime"
	^ self timeParameters waitTime

]
