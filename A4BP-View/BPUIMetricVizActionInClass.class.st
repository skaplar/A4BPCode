Class {
	#name : #BPUIMetricVizActionInClass,
	#superclass : #A4BPAbstractVisitor,
	#instVars : [
		'rootObj',
		'nodes'
	],
	#category : #'A4BP-View-UI-metric'
}

{ #category : #'as yet unclassified' }
BPUIMetricVizActionInClass class >> annotation [
<MSEClass: #BPUIMetricVizActionInClass  super: #A4BPAbstractVisitor >
<package: #'A4BP-View' >
]

{ #category : #'as yet unclassified' }
BPUIMetricVizActionInClass >> initialize [
	super initialize.
	nodes := OrderedCollection new
]

{ #category : #'as yet unclassified' }
BPUIMetricVizActionInClass >> nodes [
	^ nodes
]

{ #category : #'as yet unclassified' }
BPUIMetricVizActionInClass >> rootObj: arootObj [
	rootObj := arootObj
]

{ #category : #'as yet unclassified' }
BPUIMetricVizActionInClass >> visitBPMN20DefinitionsImpl: aModel [ 
	nodes := rootObj process.
	^ nodes
]

{ #category : #'as yet unclassified' }
BPUIMetricVizActionInClass >> visitBPMN20ProcessImpl: aModel [ 
	nodes := Array with: aModel.
	^ nodes
]

{ #category : #'as yet unclassified' }
BPUIMetricVizActionInClass >> visitBPProcess: aBPProcess [
	nodes := rootObj process.
	^ nodes
]

{ #category : #'as yet unclassified' }
BPUIMetricVizActionInClass >> visitBPSequence: aBPSequence [
	nodes := rootObj lstActivities.
	^ nodes
]

{ #category : #'as yet unclassified' }
BPUIMetricVizActionInClass >> visitBPWSDLWsdl: aModel [
	nodes := rootObj wsdls.
	^ nodes
]

{ #category : #'as yet unclassified' }
BPUIMetricVizActionInClass >> visitBPXSDSchema: aSchema [
	nodes := rootObj schemas.
	^ nodes
]
