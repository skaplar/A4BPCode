Class {
	#name : #BPMN20ScriptTaskImpl,
	#superclass : #BPMN20TaskImpl,
	#instVars : [
		'scriptFormat',
		'SCRIPT_EDEFAULT',
		'SCRIPT_FORMAT_EDEFAULT',
		'script'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl class >> annotation [
<MSEClass: #BPMN20ScriptTaskImpl  super: #BPMN20TaskImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> SCRIPT_EDEFAULT [
^ SCRIPT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> SCRIPT_EDEFAULT: aSCRIPT_EDEFAULT [
^ SCRIPT_EDEFAULT := aSCRIPT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> SCRIPT_FORMAT_EDEFAULT [
^ SCRIPT_FORMAT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> SCRIPT_FORMAT_EDEFAULT: aSCRIPT_FORMAT_EDEFAULT [
^ SCRIPT_FORMAT_EDEFAULT := aSCRIPT_FORMAT_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ScriptTaskImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> auditing [
	^ auditing
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> auditing: aauditing [
	^ auditing := aauditing
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> boundaryEventRefs [
	^ boundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> boundaryEventRefs: aboundaryEventRefs [
	^ boundaryEventRefs := aboundaryEventRefs
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> categoryValueRef [
	^ categoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> categoryValueRef: acategoryValueRef [
	^ categoryValueRef := acategoryValueRef
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> completionQuantity [
	^ completionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> completionQuantity: acompletionQuantity [
	^ completionQuantity := acompletionQuantity
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> dataInputAssociations [
	^ dataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> dataInputAssociations: adataInputAssociations [
	^ dataInputAssociations := adataInputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> dataOutputAssociations [
	^ dataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> dataOutputAssociations: adataOutputAssociations [
	^ dataOutputAssociations := adataOutputAssociations
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> default_ [
	^ default_
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> default_: adefault_ [
	^ default_ := adefault_
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> incoming [
	^ incoming
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> incoming: aincoming [
	^ incoming := aincoming
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> ioSpecification [
	^ ioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> ioSpecification: aioSpecification [
	^ ioSpecification := aioSpecification
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> isForCompensation [
	^ isForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> isForCompensation: aisForCompensation [
	^ isForCompensation := aisForCompensation
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> lanes [
	^ lanes
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> lanes: alanes [
	^ lanes := alanes
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> loopCharacteristics [
	^ loopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> loopCharacteristics: aloopCharacteristics [
	^ loopCharacteristics := aloopCharacteristics
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> monitoring [
	^ monitoring
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> monitoring: amonitoring [
	^ monitoring := amonitoring
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> outgoing [
	^ outgoing
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> outgoing: aoutgoing [
	^ outgoing := aoutgoing
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> properties [
	^ properties
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> properties: aproperties [
	^ properties := aproperties
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> resources [
	^ resources
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> resources: aresources [
	^ resources := aresources
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> script [
^ script
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> script: ascript [
^ script := ascript
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> scriptFormat [
^ scriptFormat
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> scriptFormat: ascriptFormat [
^ scriptFormat := ascriptFormat
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> startQuantity [
	^ startQuantity
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> startQuantity: astartQuantity [
	^ startQuantity := astartQuantity
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ScriptTaskImpl >> text: atext [
	^ text := atext
]
