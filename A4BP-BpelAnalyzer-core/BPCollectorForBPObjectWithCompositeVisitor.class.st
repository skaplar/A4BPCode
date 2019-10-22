"
A BPMetricCFC is a implementation of visitor patter to control the action to execute in BPModel
to calculate the CFC metric
"
Class {
	#name : #BPCollectorForBPObjectWithCompositeVisitor,
	#superclass : #BPCollectorBasicVisitor,
	#category : #'A4BP-BpelAnalyzer-core-biz-actions'
}

{ #category : #'as yet unclassified' }
BPCollectorForBPObjectWithCompositeVisitor class >> annotation [
<MSEClass: #BPCollectorForBPObjectWithCompositeVisitor  super: #BPCollectorBasicVisitor >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #initialization }
BPCollectorForBPObjectWithCompositeVisitor >> initialize [
	"comment stating purpose of message"

	super initialize
]

{ #category : #visitors }
BPCollectorForBPObjectWithCompositeVisitor >> visitBPActivityComposite: aBPActivityComposite [
	self addBPObject: aBPActivityComposite.
	aBPActivityComposite lstActivities do:[ :act | act accept: self].
	^ lstBPObj 
]

{ #category : #visitors }
BPCollectorForBPObjectWithCompositeVisitor >> visitBPFlow: aBPInvoke [
	^ self visitBPActivityComposite: aBPInvoke 
]

{ #category : #visitors }
BPCollectorForBPObjectWithCompositeVisitor >> visitBPObject: aBPObject [
	"do nothing because the operation is with BPOnMessage"

	^ 0
]

{ #category : #visitors }
BPCollectorForBPObjectWithCompositeVisitor >> visitBPScope: aBPScope [
	^ self visitBPActivityComposite: aBPScope 
]

{ #category : #visitors }
BPCollectorForBPObjectWithCompositeVisitor >> visitBPSequence: aBPSequence [
	^ self visitBPActivityComposite: aBPSequence 
]

{ #category : #visitors }
BPCollectorForBPObjectWithCompositeVisitor >> visitBPWhile: aBPWhile [
	^ self visitBPActivityComposite: aBPWhile
]
