Class {
	#name : #BPMN20LoopCharacteristicsImpl,
	#superclass : #BPMN20BaseElementImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl class >> annotation [
<MSEClass: #BPMN20LoopCharacteristicsImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> BEHAVIOR_EDEFAULT [
	^ BEHAVIOR_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> BEHAVIOR_EDEFAULT: aBEHAVIOR_EDEFAULT [
	^ BEHAVIOR_EDEFAULT := aBEHAVIOR_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> IS_SEQUENTIAL_EDEFAULT [
	^ IS_SEQUENTIAL_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> IS_SEQUENTIAL_EDEFAULT: aIS_SEQUENTIAL_EDEFAULT [
	^ IS_SEQUENTIAL_EDEFAULT := aIS_SEQUENTIAL_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> LOOP_MAXIMUM_EDEFAULT [
	^ LOOP_MAXIMUM_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> LOOP_MAXIMUM_EDEFAULT: aLOOP_MAXIMUM_EDEFAULT [
	^ LOOP_MAXIMUM_EDEFAULT := aLOOP_MAXIMUM_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> TEST_BEFORE_EDEFAULT [
	^ TEST_BEFORE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> TEST_BEFORE_EDEFAULT: aTEST_BEFORE_EDEFAULT [
	^ TEST_BEFORE_EDEFAULT := aTEST_BEFORE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20LoopCharacteristicsImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> behavior [
	^ behavior
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> behavior: abehavior [
	^ behavior := abehavior
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> completionCondition [
	^ completionCondition
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> completionCondition: acompletionCondition [
	^ completionCondition := acompletionCondition
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> complexBehaviorDefinition [
	^ complexBehaviorDefinition
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> complexBehaviorDefinition: acomplexBehaviorDefinition [
	^ complexBehaviorDefinition := acomplexBehaviorDefinition
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> inputDataItem [
	^ inputDataItem
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> inputDataItem: ainputDataItem [
	^ inputDataItem := ainputDataItem
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> isSequential [
	^ isSequential
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> isSequential: aisSequential [
	^ isSequential := aisSequential
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> loopCardinality [
	^ loopCardinality
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> loopCardinality: aloopCardinality [
	^ loopCardinality := aloopCardinality
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> loopCondition [
	^ loopCondition
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> loopCondition: aloopCondition [
	^ loopCondition := aloopCondition
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> loopDataInputRef [
	^ loopDataInputRef
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> loopDataInputRef: aloopDataInputRef [
	^ loopDataInputRef := aloopDataInputRef
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> loopDataOutputRef [
	^ loopDataOutputRef
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> loopDataOutputRef: aloopDataOutputRef [
	^ loopDataOutputRef := aloopDataOutputRef
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> loopMaximum [
	^ loopMaximum
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> loopMaximum: aloopMaximum [
	^ loopMaximum := aloopMaximum
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> noneBehaviorEventRef [
	^ noneBehaviorEventRef
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> noneBehaviorEventRef: anoneBehaviorEventRef [
	^ noneBehaviorEventRef := anoneBehaviorEventRef
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> oneBehaviorEventRef [
	^ oneBehaviorEventRef
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> oneBehaviorEventRef: aoneBehaviorEventRef [
	^ oneBehaviorEventRef := aoneBehaviorEventRef
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> outputDataItem [
	^ outputDataItem
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> outputDataItem: aoutputDataItem [
	^ outputDataItem := aoutputDataItem
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> testBefore [
	^ testBefore
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> testBefore: atestBefore [
	^ testBefore := atestBefore
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20LoopCharacteristicsImpl >> text: atext [
	^ text := atext
]
