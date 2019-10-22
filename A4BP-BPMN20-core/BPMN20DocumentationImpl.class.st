"
All BPMN elements that inherit from the BaseElement will have the capability, through the Documentation element, to have one (1) or more text descriptions of that element.
"
Class {
	#name : #BPMN20DocumentationImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'mixed',
		'TEXT_EDEFAULT',
		'textFormat',
		'TEXT_FORMAT_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl class >> annotation [
<MSEClass: #BPMN20DocumentationImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #getset }
BPMN20DocumentationImpl class >> bpmn20Name [
	^ 'Documentation'
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl class >> fromXMLDescription: document in: parent [
	^ self fromXMLDescriptionNoInProcess: document in: parent
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> TEXT_EDEFAULT [
^ TEXT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> TEXT_EDEFAULT: aTEXT_EDEFAULT [
^ TEXT_EDEFAULT := aTEXT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> TEXT_FORMAT_EDEFAULT [
^ TEXT_FORMAT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> TEXT_FORMAT_EDEFAULT: aTEXT_FORMAT_EDEFAULT [
^ TEXT_FORMAT_EDEFAULT := aTEXT_FORMAT_EDEFAULT
]

{ #category : #getset }
BPMN20DocumentationImpl >> aName [
	aName size > 0 ifTrue:[ ^ aName ].
	^ self class bpmn20Name, ' of ' , parent aName
]

{ #category : #visitor }
BPMN20DocumentationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DocumentationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> mixed [
^ mixed
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> mixed: amixed [
^ mixed := amixed
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> textFormat [
^ textFormat
]

{ #category : #'as yet unclassified' }
BPMN20DocumentationImpl >> textFormat: atextFormat [
^ textFormat := atextFormat
]
