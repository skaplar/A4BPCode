Class {
	#name : #BPMN20ExtensionImpl,
	#superclass : #BPMN20Object,
	#instVars : [
		'mustUnderstand',
		'xsdDefinition',
		'definition',
		'MUST_UNDERSTAND_EDEFAULT',
		'XSD_DEFINITION_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl class >> annotation [
<MSEClass: #BPMN20ExtensionImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> MUST_UNDERSTAND_EDEFAULT [
^ MUST_UNDERSTAND_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> MUST_UNDERSTAND_EDEFAULT: aMUST_UNDERSTAND_EDEFAULT [
^ MUST_UNDERSTAND_EDEFAULT := aMUST_UNDERSTAND_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> XSD_DEFINITION_EDEFAULT [
^ XSD_DEFINITION_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> XSD_DEFINITION_EDEFAULT: aXSD_DEFINITION_EDEFAULT [
^ XSD_DEFINITION_EDEFAULT := aXSD_DEFINITION_EDEFAULT
]

{ #category : #visitor }
BPMN20ExtensionImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20ExtensionImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> definition [
^ definition
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> definition: adefinition [
^ definition := adefinition
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> mustUnderstand [
^ mustUnderstand
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> mustUnderstand: amustUnderstand [
^ mustUnderstand := amustUnderstand
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> xsdDefinition [
^ xsdDefinition
]

{ #category : #'as yet unclassified' }
BPMN20ExtensionImpl >> xsdDefinition: axsdDefinition [
^ xsdDefinition := axsdDefinition
]
