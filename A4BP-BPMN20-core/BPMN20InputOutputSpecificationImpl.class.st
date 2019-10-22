Class {
	#name : #BPMN20InputOutputSpecificationImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'dataOutputs',
		'inputSets',
		'outputSets',
		'dataInputs'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl class >> annotation [
<MSEClass: #BPMN20InputOutputSpecificationImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20InputOutputSpecificationImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> dataInputs [
^ dataInputs
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> dataInputs: adataInputs [
^ dataInputs := adataInputs
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> dataOutputs [
^ dataOutputs
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> dataOutputs: adataOutputs [
^ dataOutputs := adataOutputs
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> documentation [
	^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> extensionValues [
	^ extensionValues
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> inputSets [
^ inputSets
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> inputSets: ainputSets [
^ inputSets := ainputSets
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> outputSets [
^ outputSets
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> outputSets: aoutputSets [
^ outputSets := aoutputSets
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20InputOutputSpecificationImpl >> text: atext [
	^ text := atext
]
