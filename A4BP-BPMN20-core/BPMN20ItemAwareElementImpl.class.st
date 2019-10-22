Class {
	#name : #BPMN20ItemAwareElementImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'itemSubjectRef',
		'dataState'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl class >> annotation [
<MSEClass: #BPMN20ItemAwareElementImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> CAPACITY_EDEFAULT [
	^ CAPACITY_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> CAPACITY_EDEFAULT: aCAPACITY_EDEFAULT [
	^ CAPACITY_EDEFAULT := aCAPACITY_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> IS_COLLECTION_EDEFAULT [
	^ IS_COLLECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> IS_COLLECTION_EDEFAULT: aIS_COLLECTION_EDEFAULT [
	^ IS_COLLECTION_EDEFAULT := aIS_COLLECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> IS_UNLIMITED_EDEFAULT [
	^ IS_UNLIMITED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> IS_UNLIMITED_EDEFAULT: aIS_UNLIMITED_EDEFAULT [
	^ IS_UNLIMITED_EDEFAULT := aIS_UNLIMITED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ItemAwareElementImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> capacity [
	^ capacity
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> capacity: acapacity [
	^ capacity := acapacity
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> dataState [
^ dataState
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> dataState: adataState [
^ dataState := adataState
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> inputSetRefs [
	^ inputSetRefs
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> inputSetRefs: ainputSetRefs [
	^ inputSetRefs := ainputSetRefs
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> inputSetWithOptional [
	^ inputSetWithOptional
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> inputSetWithOptional: ainputSetWithOptional [
	^ inputSetWithOptional := ainputSetWithOptional
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> inputSetWithWhileExecuting [
	^ inputSetWithWhileExecuting
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> inputSetWithWhileExecuting: ainputSetWithWhileExecuting [
	^ inputSetWithWhileExecuting := ainputSetWithWhileExecuting
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> isCollection [
	^ isCollection
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> isCollection: aisCollection [
	^ isCollection := aisCollection
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> isUnlimited [
	^ isUnlimited
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> isUnlimited: aisUnlimited [
	^ isUnlimited := aisUnlimited
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> itemSubjectRef [
^ itemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> itemSubjectRef: aitemSubjectRef [
^ itemSubjectRef := aitemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> outputSetRefs [
	^ outputSetRefs
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> outputSetRefs: aoutputSetRefs [
	^ outputSetRefs := aoutputSetRefs
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> outputSetWithOptional [
	^ outputSetWithOptional
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> outputSetWithOptional: aoutputSetWithOptional [
	^ outputSetWithOptional := aoutputSetWithOptional
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> outputSetWithWhileExecuting [
	^ outputSetWithWhileExecuting
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> outputSetWithWhileExecuting: aoutputSetWithWhileExecuting [
	^ outputSetWithWhileExecuting := aoutputSetWithWhileExecuting
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ItemAwareElementImpl >> text: atext [
	^ text := atext
]
