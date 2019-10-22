Class {
	#name : #A4BPEmptyObj,
	#superclass : #A4BPObject,
	#classInstVars : [
		'instance'
	],
	#category : #'A4BP-core-model'
}

{ #category : #instance }
A4BPEmptyObj class >> annotation [
<MSEClass: #A4BPEmptyObj  super: #A4BPObject >
<package: #'A4BP-core' >
]

{ #category : #instance }
A4BPEmptyObj class >> instance [
	instance ifNil:[instance:=self basicNew].
	instance aName:'A4BPEmptyObj'.
	^ instance
]

{ #category : #instance }
A4BPEmptyObj class >> new [
	A4BPLog w:'A4BP warning:Do you use new message to get A4BPEmptyObj, please use better instance message'.
	^ self instance
]

{ #category : #visitor }
A4BPEmptyObj >> accept: aVisitor [
	^ aVisitor visitA4BPEmptyObj: self
]

{ #category : #all }
A4BPEmptyObj >> allElements [
	^ OrderedCollection new
]

{ #category : #'as yet unclassified' }
A4BPEmptyObj >> bpwsdl [
	^ nil
]

{ #category : #visitor }
A4BPEmptyObj >> equals: aModel [
	^ aModel = self
]

{ #category : #'as yet unclassified' }
A4BPEmptyObj >> getChildrenNodes [
	^ nil
]

{ #category : #initialization }
A4BPEmptyObj >> initialize [
	super initialize.
	aName:='Empty'.
]

{ #category : #'as yet unclassified' }
A4BPEmptyObj >> isEmptyObj [
 ^ true
]

{ #category : #all }
A4BPEmptyObj >> link [
	^ self
]
