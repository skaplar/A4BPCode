Class {
	#name : #BPMN20GlobalTaskImpl,
	#superclass : #BPMN20CallableElementImpl,
	#instVars : [
		'resources'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl class >> annotation [
<MSEClass: #BPMN20GlobalTaskImpl  super: #BPMN20CallableElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> IMPLEMENTATION_EDEFAULT [
	^ IMPLEMENTATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> IMPLEMENTATION_EDEFAULT: aIMPLEMENTATION_EDEFAULT [
	^ IMPLEMENTATION_EDEFAULT := aIMPLEMENTATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> SCRIPT_EDEFAULT [
	^ SCRIPT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> SCRIPT_EDEFAULT: aSCRIPT_EDEFAULT [
	^ SCRIPT_EDEFAULT := aSCRIPT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> SCRIPT_LANGUAGE_EDEFAULT [
	^ SCRIPT_LANGUAGE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> SCRIPT_LANGUAGE_EDEFAULT: aSCRIPT_LANGUAGE_EDEFAULT [
	^ SCRIPT_LANGUAGE_EDEFAULT := aSCRIPT_LANGUAGE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20GlobalTaskImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> implementation [
	^ implementation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> implementation: aimplementation [
	^ implementation := aimplementation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> ioBinding [
	^ ioBinding
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> ioBinding: aioBinding [
	^ ioBinding := aioBinding
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> renderings [
	^ renderings
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> renderings: arenderings [
	^ renderings := arenderings
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> resources [
^ resources
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> resources: aresources [
^ resources := aresources
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> script [
	^ script
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> script: ascript [
	^ script := ascript
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> scriptLanguage [
	^ scriptLanguage
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> scriptLanguage: ascriptLanguage [
	^ scriptLanguage := ascriptLanguage
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> supportedInterfaceRefs [
	^ supportedInterfaceRefs
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> supportedInterfaceRefs: asupportedInterfaceRefs [
	^ supportedInterfaceRefs := asupportedInterfaceRefs
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20GlobalTaskImpl >> text: atext [
	^ text := atext
]
