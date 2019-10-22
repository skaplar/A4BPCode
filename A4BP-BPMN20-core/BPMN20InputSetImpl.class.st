Class {
	#name : #BPMN20InputSetImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'NAME_EDEFAULT',
		'dataInputRefs',
		'name',
		'optionalInputRefs',
		'outputSetRefs',
		'whileExecutingInputRefs'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl class >> annotation [
<MSEClass: #BPMN20InputSetImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20InputSetImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> dataInputRefs [
^ dataInputRefs
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> dataInputRefs: adataInputRefs [
^ dataInputRefs := adataInputRefs
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> optionalInputRefs [
^ optionalInputRefs
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> optionalInputRefs: aoptionalInputRefs [
^ optionalInputRefs := aoptionalInputRefs
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> outputSetRefs [
^ outputSetRefs
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> outputSetRefs: aoutputSetRefs [
^ outputSetRefs := aoutputSetRefs
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> whileExecutingInputRefs [
^ whileExecutingInputRefs
]

{ #category : #'as yet unclassified' }
BPMN20InputSetImpl >> whileExecutingInputRefs: awhileExecutingInputRefs [
^ whileExecutingInputRefs := awhileExecutingInputRefs
]
