Class {
	#name : #A4BPVCBuilder,
	#superclass : #A4BPAbstractVisitor,
	#category : #'A4BP-View-Visualization'
}

{ #category : #'as yet unclassified' }
A4BPVCBuilder class >> annotation [
<MSEClass: #A4BPVCBuilder  super: #A4BPAbstractVisitor >
<package: #'A4BP-View' >
]

{ #category : #visit }
A4BPVCBuilder >> setVisualizationForAllModel: visualizations inModel: aModel [
	"call for all visitmetod to add the visualization that can execute all objects in the model"

	| bpvc |
	bpvc := A4BPVCBasicRelations new.
	bpvc bpObj: aModel.
	visualizations add: bpvc.
	^ visualizations
]

{ #category : #visit }
A4BPVCBuilder >> visitA4BPObject: aModel [
	| visualizations |
	visualizations := OrderedCollection new.
	^ visualizations
]

{ #category : #visit }
A4BPVCBuilder >> visitA4BPSOAContext: aModel [
	| visualizations bpvc |
	visualizations := OrderedCollection new.

	A4BPVCSOAContext subclasses do: [ :c | 
		bpvc:= c new.
		bpvc visible ifTrue:[
			bpvc bpObj: aModel.
			visualizations add: bpvc.]
		].
	^ visualizations
]

{ #category : #visit }
A4BPVCBuilder >> visitBPObject: aBPObject [
	| visualizations |
	visualizations := OrderedCollection new.
	^ visualizations
]

{ #category : #visit }
A4BPVCBuilder >> visitSOAAnalyzer: aModel [
	^ self visitBPObject: aModel
]
