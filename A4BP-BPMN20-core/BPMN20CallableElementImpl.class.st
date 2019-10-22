Class {
	#name : #BPMN20CallableElementImpl,
	#superclass : #BPMN20RootElementImpl,
	#instVars : [
		'ioSpecification',
		'NAME_EDEFAULT',
		'ioBinding',
		'name',
		'supportedInterfaceRefs'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl class >> annotation [
<MSEClass: #BPMN20CallableElementImpl  super: #BPMN20RootElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> IMPLEMENTATION_EDEFAULT [
	^ IMPLEMENTATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> IMPLEMENTATION_EDEFAULT: aIMPLEMENTATION_EDEFAULT [
	^ IMPLEMENTATION_EDEFAULT := aIMPLEMENTATION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> SCRIPT_EDEFAULT [
	^ SCRIPT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> SCRIPT_EDEFAULT: aSCRIPT_EDEFAULT [
	^ SCRIPT_EDEFAULT := aSCRIPT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> SCRIPT_LANGUAGE_EDEFAULT [
	^ SCRIPT_LANGUAGE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> SCRIPT_LANGUAGE_EDEFAULT: aSCRIPT_LANGUAGE_EDEFAULT [
	^ SCRIPT_LANGUAGE_EDEFAULT := aSCRIPT_LANGUAGE_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20CallableElementImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> artifacts [
	^ artifacts
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> artifacts: aartifacts [
	^ artifacts := aartifacts
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> correlationSubscriptions [
	^ correlationSubscriptions
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> correlationSubscriptions: acorrelationSubscriptions [
	^ correlationSubscriptions := acorrelationSubscriptions
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> definitionalCollaborationRef [
	^ definitionalCollaborationRef
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> definitionalCollaborationRef: adefinitionalCollaborationRef [
	^ definitionalCollaborationRef := adefinitionalCollaborationRef
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> extensionElements [
	^ extensionElements
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> extensionElements: aextensionElements [
	^ extensionElements := aextensionElements
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> fileName [
	^ fileName
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> fileName: afileName [
	^ fileName := afileName
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> fullPath [
	^ fullPath
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> fullPath: afullPath [
	^ fullPath := afullPath
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> implementation [
	^ implementation
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> implementation: aimplementation [
	^ implementation := aimplementation
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> ioBinding [
^ ioBinding
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> ioBinding: aioBinding [
^ ioBinding := aioBinding
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> ioSpecification [
^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> ioSpecification: aioSpecification [
^ ioSpecification := aioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> isClosed [
	^ isClosed
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> isClosed: aisClosed [
	^ isClosed := aisClosed
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> isExecutable [
	^ isExecutable
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> isExecutable: aisExecutable [
	^ isExecutable := aisExecutable
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> laneSets [
	^ laneSets
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> laneSets: alaneSets [
	^ laneSets := alaneSets
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> processType [
	^ processType
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> processType: aprocessType [
	^ processType := aprocessType
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> renderings [
	^ renderings
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> renderings: arenderings [
	^ renderings := arenderings
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> resources [
	^ resources
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> resources: aresources [
	^ resources := aresources
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> script [
	^ script
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> script: ascript [
	^ script := ascript
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> scriptLanguage [
	^ scriptLanguage
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> scriptLanguage: ascriptLanguage [
	^ scriptLanguage := ascriptLanguage
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> supportedInterfaceRefs [
^ supportedInterfaceRefs
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> supportedInterfaceRefs: asupportedInterfaceRefs [
^ supportedInterfaceRefs := asupportedInterfaceRefs
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> supports [
	^ supports
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> supports: asupports [
	^ supports := asupports
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20CallableElementImpl >> text: atext [
	^ text := atext
]
