Class {
	#name : #BPMN20GlobalUserTaskImpl,
	#superclass : #BPMN20GlobalTaskImpl,
	#instVars : [
		'renderings',
		'IMPLEMENTATION_EDEFAULT',
		'implementation'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl class >> annotation [
<MSEClass: #BPMN20GlobalUserTaskImpl  super: #BPMN20GlobalTaskImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> IMPLEMENTATION_EDEFAULT [
^ IMPLEMENTATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> IMPLEMENTATION_EDEFAULT: aIMPLEMENTATION_EDEFAULT [
^ IMPLEMENTATION_EDEFAULT := aIMPLEMENTATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20GlobalUserTaskImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> implementation [
^ implementation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> implementation: aimplementation [
^ implementation := aimplementation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> ioBinding [
	^ ioBinding
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> ioBinding: aioBinding [
	^ ioBinding := aioBinding
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> renderings [
^ renderings
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> renderings: arenderings [
^ renderings := arenderings
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> resources [
	^ resources
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> resources: aresources [
	^ resources := aresources
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> supportedInterfaceRefs [
	^ supportedInterfaceRefs
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> supportedInterfaceRefs: asupportedInterfaceRefs [
	^ supportedInterfaceRefs := asupportedInterfaceRefs
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20GlobalUserTaskImpl >> text: atext [
	^ text := atext
]
