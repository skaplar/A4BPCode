Class {
	#name : #BPMN20ResourceImpl,
	#superclass : #BPMN20RootElementImpl,
	#instVars : [
		'NAME_EDEFAULT',
		'name',
		'resourceParameters'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl class >> annotation [
<MSEClass: #BPMN20ResourceImpl  super: #BPMN20RootElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20ResourceImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20ResourceImplVisitor new.
	visitor element: aModel.
	self fillElementsIn: aModel from: document visitor: visitor.
	"aModel nsNameSpaces: document nameSpaces."
]

{ #category : #parser }
BPMN20ResourceImpl class >> fromXMLDescription: document in: parent [
	^ self fromXMLDescriptionNoInProcess: document in: parent
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #visitor }
BPMN20ResourceImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ResourceImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> resourceParameters [
^ resourceParameters
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> resourceParameters: aresourceParameters [
^ resourceParameters := aresourceParameters
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ResourceImpl >> text: atext [
	^ text := atext
]
