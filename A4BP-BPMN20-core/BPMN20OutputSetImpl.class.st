Class {
	#name : #BPMN20OutputSetImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'optionalOutputRefs',
		'NAME_EDEFAULT',
		'name',
		'inputSetRefs',
		'whileExecutingOutputRefs',
		'dataOutputRefs'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl class >> annotation [
<MSEClass: #BPMN20OutputSetImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20OutputSetImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> dataOutputRefs [
^ dataOutputRefs
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> dataOutputRefs: adataOutputRefs [
^ dataOutputRefs := adataOutputRefs
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> inputSetRefs [
^ inputSetRefs
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> inputSetRefs: ainputSetRefs [
^ inputSetRefs := ainputSetRefs
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> optionalOutputRefs [
^ optionalOutputRefs
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> optionalOutputRefs: aoptionalOutputRefs [
^ optionalOutputRefs := aoptionalOutputRefs
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> whileExecutingOutputRefs [
^ whileExecutingOutputRefs
]

{ #category : #'as yet unclassified' }
BPMN20OutputSetImpl >> whileExecutingOutputRefs: awhileExecutingOutputRefs [
^ whileExecutingOutputRefs := awhileExecutingOutputRefs
]
