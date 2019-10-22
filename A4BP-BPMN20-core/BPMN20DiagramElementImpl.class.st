Class {
	#name : #BPMN20DiagramElementImpl,
	#superclass : #BPMN20Object,
	#instVars : [
		'style',
		'ownedElement',
		'owningElement',
		'modelElement'
	],
	#classVars : [
		'ID_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model-dd-di'
}

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl class >> annotation [
<MSEClass: #BPMN20DiagramElementImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DiagramElementImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> modelElement [
^ modelElement
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> modelElement: amodelElement [
^ modelElement := amodelElement
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> ownedElement [
^ ownedElement
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> ownedElement: aownedElement [
^ ownedElement := aownedElement
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> owningElement [
^ owningElement
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> owningElement: aowningElement [
^ owningElement := aowningElement
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> style [
^ style
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> style: astyle [
^ style := astyle
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20DiagramElementImpl >> text: atext [
	^ text := atext
]
