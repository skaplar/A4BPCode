Class {
	#name : #BPMN20DataInputImpl,
	#superclass : #BPMN20ItemAwareElementImpl,
	#instVars : [
		'name',
		'inputSetWithWhileExecuting',
		'NAME_EDEFAULT',
		'inputSetWithOptional',
		'IS_COLLECTION_EDEFAULT',
		'inputSetRefs'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl class >> annotation [
<MSEClass: #BPMN20DataInputImpl  super: #BPMN20ItemAwareElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> IS_COLLECTION_EDEFAULT [
^ IS_COLLECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> IS_COLLECTION_EDEFAULT: aIS_COLLECTION_EDEFAULT [
^ IS_COLLECTION_EDEFAULT := aIS_COLLECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DataInputImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> dataState [
	^ dataState
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> dataState: adataState [
	^ dataState := adataState
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> inputSetRefs [
^ inputSetRefs
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> inputSetRefs: ainputSetRefs [
^ inputSetRefs := ainputSetRefs
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> inputSetWithOptional [
^ inputSetWithOptional
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> inputSetWithOptional: ainputSetWithOptional [
^ inputSetWithOptional := ainputSetWithOptional
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> inputSetWithWhileExecuting [
^ inputSetWithWhileExecuting
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> inputSetWithWhileExecuting: ainputSetWithWhileExecuting [
^ inputSetWithWhileExecuting := ainputSetWithWhileExecuting
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> isCollection [
	^ isCollection
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> isCollection: aisCollection [
	^ isCollection := aisCollection
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> itemSubjectRef [
	^ itemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> itemSubjectRef: aitemSubjectRef [
	^ itemSubjectRef := aitemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20DataInputImpl >> text: atext [
	^ text := atext
]
