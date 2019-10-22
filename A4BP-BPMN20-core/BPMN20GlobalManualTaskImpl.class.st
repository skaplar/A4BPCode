Class {
	#name : #BPMN20GlobalManualTaskImpl,
	#superclass : #BPMN20GlobalTaskImpl,
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl class >> annotation [
<MSEClass: #BPMN20GlobalManualTaskImpl  super: #BPMN20GlobalTaskImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20GlobalManualTaskImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> ioBinding [
	^ ioBinding
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> ioBinding: aioBinding [
	^ ioBinding := aioBinding
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> resources [
	^ resources
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> resources: aresources [
	^ resources := aresources
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> supportedInterfaceRefs [
	^ supportedInterfaceRefs
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> supportedInterfaceRefs: asupportedInterfaceRefs [
	^ supportedInterfaceRefs := asupportedInterfaceRefs
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20GlobalManualTaskImpl >> text: atext [
	^ text := atext
]
