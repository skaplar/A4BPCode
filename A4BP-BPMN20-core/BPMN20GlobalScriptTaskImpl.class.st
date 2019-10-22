Class {
	#name : #BPMN20GlobalScriptTaskImpl,
	#superclass : #BPMN20GlobalTaskImpl,
	#instVars : [
		'SCRIPT_EDEFAULT',
		'script',
		'scriptLanguage',
		'SCRIPT_LANGUAGE_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl class >> annotation [
<MSEClass: #BPMN20GlobalScriptTaskImpl  super: #BPMN20GlobalTaskImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> NAME_EDEFAULT [
	^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
	^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> SCRIPT_EDEFAULT [
^ SCRIPT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> SCRIPT_EDEFAULT: aSCRIPT_EDEFAULT [
^ SCRIPT_EDEFAULT := aSCRIPT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> SCRIPT_LANGUAGE_EDEFAULT [
^ SCRIPT_LANGUAGE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> SCRIPT_LANGUAGE_EDEFAULT: aSCRIPT_LANGUAGE_EDEFAULT [
^ SCRIPT_LANGUAGE_EDEFAULT := aSCRIPT_LANGUAGE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20GlobalScriptTaskImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> ioBinding [
	^ ioBinding
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> ioBinding: aioBinding [
	^ ioBinding := aioBinding
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> resources [
	^ resources
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> resources: aresources [
	^ resources := aresources
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> script [
^ script
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> script: ascript [
^ script := ascript
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> scriptLanguage [
^ scriptLanguage
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> scriptLanguage: ascriptLanguage [
^ scriptLanguage := ascriptLanguage
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> supportedInterfaceRefs [
	^ supportedInterfaceRefs
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> supportedInterfaceRefs: asupportedInterfaceRefs [
	^ supportedInterfaceRefs := asupportedInterfaceRefs
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20GlobalScriptTaskImpl >> text: atext [
	^ text := atext
]
