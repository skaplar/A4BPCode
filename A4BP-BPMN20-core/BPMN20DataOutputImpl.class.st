Class {
	#name : #BPMN20DataOutputImpl,
	#superclass : #BPMN20ItemAwareElementImpl,
	#instVars : [
		'name',
		'outputSetWithOptional',
		'outputSetRefs',
		'IS_COLLECTION_EDEFAULT',
		'outputSetWithWhileExecuting',
		'NAME_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl class >> annotation [
<MSEClass: #BPMN20DataOutputImpl  super: #BPMN20ItemAwareElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> IS_COLLECTION_EDEFAULT [
^ IS_COLLECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> IS_COLLECTION_EDEFAULT: aIS_COLLECTION_EDEFAULT [
^ IS_COLLECTION_EDEFAULT := aIS_COLLECTION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DataOutputImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> dataState [
	^ dataState
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> dataState: adataState [
	^ dataState := adataState
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> isCollection [
	^ isCollection
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> isCollection: aisCollection [
	^ isCollection := aisCollection
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> itemSubjectRef [
	^ itemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> itemSubjectRef: aitemSubjectRef [
	^ itemSubjectRef := aitemSubjectRef
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> outputSetRefs [
^ outputSetRefs
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> outputSetRefs: aoutputSetRefs [
^ outputSetRefs := aoutputSetRefs
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> outputSetWithOptional [
^ outputSetWithOptional
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> outputSetWithOptional: aoutputSetWithOptional [
^ outputSetWithOptional := aoutputSetWithOptional
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> outputSetWithWhileExecuting [
^ outputSetWithWhileExecuting
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> outputSetWithWhileExecuting: aoutputSetWithWhileExecuting [
^ outputSetWithWhileExecuting := aoutputSetWithWhileExecuting
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20DataOutputImpl >> text: atext [
	^ text := atext
]
