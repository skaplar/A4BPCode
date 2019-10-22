Class {
	#name : #BPMN20DiagramImpl,
	#superclass : #BPMN20Object,
	#instVars : [
		'ownedStyle',
		'documentation',
		'name',
		'resolution'
	],
	#classVars : [
		'DOCUMENTATION_EDEFAULT',
		'ID_EDEFAULT',
		'NAME_EDEFAULT',
		'RESOLUTION_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model-dd-di'
}

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl class >> annotation [
<MSEClass: #BPMN20DiagramImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DiagramImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> documentation [
^ documentation
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> documentation: adocumentation [
^ documentation := adocumentation
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> labelStyle [
	^ labelStyle
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> labelStyle: alabelStyle [
	^ labelStyle := alabelStyle
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> ownedStyle [
^ ownedStyle
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> ownedStyle: aownedStyle [
^ ownedStyle := aownedStyle
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> plane [
	^ plane
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> plane: aplane [
	^ plane := aplane
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> resolution [
^ resolution
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> resolution: aresolution [
^ resolution := aresolution
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20DiagramImpl >> text: atext [
	^ text := atext
]
