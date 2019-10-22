Class {
	#name : #BPMN20MultiInstanceLoopCharacteristicsImpl,
	#superclass : #BPMN20LoopCharacteristicsImpl,
	#instVars : [
		'loopDataInputRef',
		'outputDataItem',
		'complexBehaviorDefinition',
		'isSequential',
		'noneBehaviorEventRef',
		'loopDataOutputRef',
		'completionCondition',
		'oneBehaviorEventRef',
		'IS_SEQUENTIAL_EDEFAULT',
		'loopCardinality',
		'behavior',
		'BEHAVIOR_EDEFAULT',
		'inputDataItem'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl class >> annotation [
<MSEClass: #BPMN20MultiInstanceLoopCharacteristicsImpl  super: #BPMN20LoopCharacteristicsImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> BEHAVIOR_EDEFAULT [
^ BEHAVIOR_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> BEHAVIOR_EDEFAULT: aBEHAVIOR_EDEFAULT [
^ BEHAVIOR_EDEFAULT := aBEHAVIOR_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> IS_SEQUENTIAL_EDEFAULT [
^ IS_SEQUENTIAL_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> IS_SEQUENTIAL_EDEFAULT: aIS_SEQUENTIAL_EDEFAULT [
^ IS_SEQUENTIAL_EDEFAULT := aIS_SEQUENTIAL_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20MultiInstanceLoopCharacteristicsImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> behavior [
^ behavior
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> behavior: abehavior [
^ behavior := abehavior
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> completionCondition [
^ completionCondition
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> completionCondition: acompletionCondition [
^ completionCondition := acompletionCondition
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> complexBehaviorDefinition [
^ complexBehaviorDefinition
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> complexBehaviorDefinition: acomplexBehaviorDefinition [
^ complexBehaviorDefinition := acomplexBehaviorDefinition
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> inputDataItem [
^ inputDataItem
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> inputDataItem: ainputDataItem [
^ inputDataItem := ainputDataItem
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> isSequential [
^ isSequential
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> isSequential: aisSequential [
^ isSequential := aisSequential
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> loopCardinality [
^ loopCardinality
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> loopCardinality: aloopCardinality [
^ loopCardinality := aloopCardinality
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> loopDataInputRef [
^ loopDataInputRef
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> loopDataInputRef: aloopDataInputRef [
^ loopDataInputRef := aloopDataInputRef
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> loopDataOutputRef [
^ loopDataOutputRef
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> loopDataOutputRef: aloopDataOutputRef [
^ loopDataOutputRef := aloopDataOutputRef
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> noneBehaviorEventRef [
^ noneBehaviorEventRef
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> noneBehaviorEventRef: anoneBehaviorEventRef [
^ noneBehaviorEventRef := anoneBehaviorEventRef
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> oneBehaviorEventRef [
^ oneBehaviorEventRef
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> oneBehaviorEventRef: aoneBehaviorEventRef [
^ oneBehaviorEventRef := aoneBehaviorEventRef
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> outputDataItem [
^ outputDataItem
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> outputDataItem: aoutputDataItem [
^ outputDataItem := aoutputDataItem
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20MultiInstanceLoopCharacteristicsImpl >> text: atext [
	^ text := atext
]
