Class {
	#name : #BPMN20ResourceParameterImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'type',
		'IS_REQUIRED_EDEFAULT',
		'name',
		'isRequired',
		'NAME_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl class >> annotation [
<MSEClass: #BPMN20ResourceParameterImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> IS_REQUIRED_EDEFAULT [
^ IS_REQUIRED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> IS_REQUIRED_EDEFAULT: aIS_REQUIRED_EDEFAULT [
^ IS_REQUIRED_EDEFAULT := aIS_REQUIRED_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> NAME_EDEFAULT [
^ NAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> NAME_EDEFAULT: aNAME_EDEFAULT [
^ NAME_EDEFAULT := aNAME_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ResourceParameterImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> isRequired [
^ isRequired
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> isRequired: aisRequired [
^ isRequired := aisRequired
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> type [
^ type
]

{ #category : #'as yet unclassified' }
BPMN20ResourceParameterImpl >> type: atype [
^ type := atype
]
