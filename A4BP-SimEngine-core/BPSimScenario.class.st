"
I regroup all parameters for a given scenario.

Instance Variables:
	description	<String>		A description of this scenario
	created 		<DateTime>	When this scenario was created
	modified 	<DateTime>	When this scenario was last modified
	author 		<String>		The scenario author name
	vendor 		<String>		The name of the software tool that was used to
create this scenario
	version 		<String>		The version of this scenario
	result 		<BPSimScenario> In the case that this scenario is the output of an analysis and that the source of the analysis is also provided in the model, this field references the source scenario.
	inherits 		<BPSimScenario> Reference to the scenario that this scenario inherits from. When inheriting from scenario, only overload values and added ElementParameter with values are provided.


"
Class {
	#name : #BPSimScenario,
	#superclass : #BPSimObject,
	#instVars : [
		'version',
		'vendorExtension',
		'author',
		'inherits',
		'calendar',
		'elementParameters',
		'result',
		'created',
		'vendor',
		'modified',
		'description',
		'scenarioParameters'
	],
	#category : #'A4BP-SimEngine-core-model'
}

{ #category : #meta }
BPSimScenario class >> annotation [
<MSEClass: #BPSimScenario  super: #BPSimObject >
<package: #'A4BP-SimEngine-core' >
]

{ #category : #parser }
BPSimScenario class >> fillElementsIn: answer from: document [
	| visitor |
	visitor := BPSimParserBPSimScenarioVisitor new.
	visitor element: answer.
	
	answer author: (self readString: document at: 'author').
	answer id: (self readString: document at: 'id').
	answer description: (self readString: document at: 'description').
	answer vendor: (self readString: document at: 'vendor').
	answer version: (self readString: document at: 'version').
	
	self fillElementsIn: answer from: document visitor: visitor.

]

{ #category : #visitor }
BPSimScenario >> accept: aVisitor [
	^ aVisitor visitBPSimScenario: self
]

{ #category : #adding }
BPSimScenario >> addElementParameters: e [
	self elementParameters at: e elementRefId put: e
]

{ #category : #accessing }
BPSimScenario >> author [
	^ author
]

{ #category : #accessing }
BPSimScenario >> author: aString [
	author := aString
]

{ #category : #accessing }
BPSimScenario >> calendar [
	^ calendar
]

{ #category : #accessing }
BPSimScenario >> calendar: aCalendar [
	calendar := aCalendar 
]

{ #category : #accessing }
BPSimScenario >> created [
	^ created
]

{ #category : #accessing }
BPSimScenario >> created: aDate [
	created := aDate
]

{ #category : #accessing }
BPSimScenario >> description [
	^ description
]

{ #category : #accessing }
BPSimScenario >> description: aString [
	description := aString
]

{ #category : #accessing }
BPSimScenario >> elementParameters [
	elementParameters ifNil:[ elementParameters := Dictionary new ].
	^ elementParameters
]

{ #category : #accessing }
BPSimScenario >> elementParameters: aelementParameters [
	^ elementParameters := aelementParameters
]

{ #category : #sim }
BPSimScenario >> getParameterAt: aElement [
	[ ^ self elementParameters at: aElement id ]
		on: Error
		do: [ 
			| e |
			e := BPSimElementParameters new.
			e elementRefId: aElement id.
			e elementRef: aElement.
			self addElementParameters: e.
			^ e ]
]

{ #category : #sim }
BPSimScenario >> getParameterByName: anName [
	[ ^ (elementParameters select: [ :el | el elementRef aName = anName ]) values first ]
		on: Error
		do: [ 
			| e |
			e := BPSimElementParameters new.
			^ e ]
]

{ #category : #accessing }
BPSimScenario >> inherits [
	^ inherits
]

{ #category : #accessing }
BPSimScenario >> inherits: aScenario [
	^ inherits := aScenario
]

{ #category : #initialization }
BPSimScenario >> initialize [
	super initialize
]

{ #category : #accessing }
BPSimScenario >> modified [
	^ modified
]

{ #category : #accessing }
BPSimScenario >> modified: aDate [
	modified := aDate
]

{ #category : #metrics }
BPSimScenario >> processTime [
	| time ep |
	time := 0.
	ep := self elementParameters.
	ep
		valuesDo: [ :e | 
			| value |
			value := e timeParameters processingTime parameterValue value asInteger.
			time := time + value ].
	^ time
]

{ #category : #accessing }
BPSimScenario >> result [
	^ result
]

{ #category : #accessing }
BPSimScenario >> result: aScenario [
	^ result := aScenario
]

{ #category : #accessing }
BPSimScenario >> scenarioParameters [
	^ scenarioParameters
]

{ #category : #accessing }
BPSimScenario >> scenarioParameters: ascenarioParameters [
	^ scenarioParameters := ascenarioParameters
]

{ #category : #accessing }
BPSimScenario >> vendor [
	^ vendor
]

{ #category : #accessing }
BPSimScenario >> vendor: aString [
	^ vendor := aString
]

{ #category : #accessing }
BPSimScenario >> vendorExtension [
	^ vendorExtension
]

{ #category : #accessing }
BPSimScenario >> vendorExtension: avendorExtension [
	^ vendorExtension := avendorExtension
]

{ #category : #accessing }
BPSimScenario >> version [
	^ version
]

{ #category : #accessing }
BPSimScenario >> version: aString [
	^ version := aString
]
