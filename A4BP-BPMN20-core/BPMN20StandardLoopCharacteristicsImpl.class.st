Class {
	#name : #BPMN20StandardLoopCharacteristicsImpl,
	#superclass : #BPMN20LoopCharacteristicsImpl,
	#instVars : [
		'loopMaximum',
		'LOOP_MAXIMUM_EDEFAULT',
		'TEST_BEFORE_EDEFAULT',
		'loopCondition',
		'testBefore'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl class >> annotation [
<MSEClass: #BPMN20StandardLoopCharacteristicsImpl  super: #BPMN20LoopCharacteristicsImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> LOOP_MAXIMUM_EDEFAULT [
^ LOOP_MAXIMUM_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> LOOP_MAXIMUM_EDEFAULT: aLOOP_MAXIMUM_EDEFAULT [
^ LOOP_MAXIMUM_EDEFAULT := aLOOP_MAXIMUM_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> TEST_BEFORE_EDEFAULT [
^ TEST_BEFORE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> TEST_BEFORE_EDEFAULT: aTEST_BEFORE_EDEFAULT [
^ TEST_BEFORE_EDEFAULT := aTEST_BEFORE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20StandardLoopCharacteristicsImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> loopCondition [
^ loopCondition
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> loopCondition: aloopCondition [
^ loopCondition := aloopCondition
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> loopMaximum [
^ loopMaximum
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> loopMaximum: aloopMaximum [
^ loopMaximum := aloopMaximum
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> testBefore [
^ testBefore
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> testBefore: atestBefore [
^ testBefore := atestBefore
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20StandardLoopCharacteristicsImpl >> text: atext [
	^ text := atext
]
