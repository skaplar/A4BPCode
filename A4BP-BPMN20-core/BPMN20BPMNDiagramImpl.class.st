Class {
	#name : #BPMN20BPMNDiagramImpl,
	#superclass : #BPMN20DiagramImpl,
	#instVars : [
		'labelStyle',
		'plane'
	],
	#category : #'A4BP-BPMN20-core-model-di'
}

{ #category : #'as yet unclassified' }
BPMN20BPMNDiagramImpl class >> annotation [
<MSEClass: #BPMN20BPMNDiagramImpl  super: #BPMN20DiagramImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20BPMNDiagramImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20DiParserDiagramImplVisitor new.
	visitor element: aModel.	
	self fillElementsIn: aModel from: document visitor: visitor.
]

{ #category : #'as yet unclassified' }
BPMN20BPMNDiagramImpl class >> fromXMLDescription: document in: parent [
	^ self fromXMLDescriptionNoInProcess: document in: parent
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20BPMNDiagramImpl: self
]

{ #category : #build }
BPMN20BPMNDiagramImpl >> buildInternalRelations [
	super buildInternalRelations.
	plane buildInternalRelations.
	
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> documentation [
	^ documentation
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> labelStyle [
^ labelStyle
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> labelStyle: alabelStyle [
^ labelStyle := alabelStyle
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> myDocument [
	^ myDocument
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> ownedStyle [
	^ ownedStyle
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> ownedStyle: aownedStyle [
	^ ownedStyle := aownedStyle
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> parent [
	^ parent
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> plane [
^ plane
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> plane: aplane [
^ plane := aplane
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> resolution [
	^ resolution
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> resolution: aresolution [
	^ resolution := aresolution
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> state [
	^ state
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> state: astate [
	^ state := astate
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> text [
	^ text
]

{ #category : #getset }
BPMN20BPMNDiagramImpl >> text: atext [
	^ text := atext
]
