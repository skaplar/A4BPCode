Class {
	#name : #A4BPSOAAnalyzer,
	#superclass : #A4BPObject,
	#instVars : [
		'lstSOAContext'
	],
	#classInstVars : [
		'instance'
	],
	#category : #'A4BP-core-model'
}

{ #category : #moose }
A4BPSOAAnalyzer class >> annotation [
<MSEClass: #A4BPSOAAnalyzer  super: #A4BPObject >
<package: #'A4BP-core' >
]

{ #category : #singleton }
A4BPSOAAnalyzer class >> instance [
	instance ifNil: [ instance := self new ].
	^ instance
]

{ #category : #singleton }
A4BPSOAAnalyzer class >> reset [
	"self reset"
	instance := nil.
	^ 'OK'
]

{ #category : #visitor }
A4BPSOAAnalyzer >> accept: aVisitor [
	^ aVisitor visitSOAAnalyzer:self.
]

{ #category : #action }
A4BPSOAAnalyzer >> addSOAContext: aSOAContext [
	lstSOAContext at: aSOAContext key put: aSOAContext.
	aSOAContext parent: self.
]

{ #category : #getset }
A4BPSOAAnalyzer >> contexts [
	^ self lstSOAContext  
]

{ #category : #action }
A4BPSOAAnalyzer >> deleteSOAContext: aSOAContext [
	lstSOAContext removeKey: aSOAContext key.
]

{ #category : #getset }
A4BPSOAAnalyzer >> getChildrenNodes [
	^ self lstSOAContext 
]

{ #category : #initialization }
A4BPSOAAnalyzer >> initialize [
	super initialize.
	aName:='SOAAnalyzer'.
	lstSOAContext := Dictionary new
]

{ #category : #getset }
A4BPSOAAnalyzer >> lstSOAContext [
	^ lstSOAContext
]

{ #category : #'as yet unclassified' }
A4BPSOAAnalyzer >> lstSOAContext: alstSOAContext [
	^ lstSOAContext := alstSOAContext
]

{ #category : #getset }
A4BPSOAAnalyzer >> soaContexts [
	^ self lstSOAContext  
]
