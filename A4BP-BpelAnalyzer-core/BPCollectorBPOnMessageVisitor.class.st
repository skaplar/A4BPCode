"
A BPCollectorBPOnMessageVisitor is xxxxxxxxx.

"
Class {
	#name : #BPCollectorBPOnMessageVisitor,
	#superclass : #BPCollectorForBPObjectWithCompositeVisitor,
	#category : #'A4BP-BpelAnalyzer-core-biz-actions'
}

{ #category : #'as yet unclassified' }
BPCollectorBPOnMessageVisitor class >> annotation [
<MSEClass: #BPCollectorBPOnMessageVisitor  super: #BPCollectorForBPObjectWithCompositeVisitor >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #visitor }
BPCollectorBPOnMessageVisitor >> visitBPActivityComposite: aBPActivityComposite [
	aBPActivityComposite lstActivities do:[ :act | act accept: self].
	^ lstBPObj 
]

{ #category : #visitor }
BPCollectorBPOnMessageVisitor >> visitBPObject: aBPObject [
	"do nothing because the operation is with BPOnMessage"
]

{ #category : #visitor }
BPCollectorBPOnMessageVisitor >> visitBPOnMessage: aModel [
	self addBPObject: aModel
]

{ #category : #visitor }
BPCollectorBPOnMessageVisitor >> visitBPPick: aBPPick [
	aBPPick lstBPOnMessage do:[:v|v accept:self].
	

]
