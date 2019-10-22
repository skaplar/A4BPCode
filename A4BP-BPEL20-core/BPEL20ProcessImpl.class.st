Class {
	#name : #BPEL20ProcessImpl,
	#superclass : #BPEL20BPELExtensibleElementImpl,
	#instVars : [
		'processName',
		'activitie',
		'variables',
		'partnerLinks',
		'faultHandlers',
		'fileName',
		'fullPath',
		'bpRelations',
		'nsNameSpaces',
		'bpRelationsProcessInstrumented'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #parser }
BPEL20ProcessImpl class >> annotation [
<MSEClass: #BPEL20ProcessImpl  super: #BPEL20BPELExtensibleElementImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #parser }
BPEL20ProcessImpl class >> fillElementsIn: aBPProcess from: document [
	"| visitor |
	visitor := BPBuilderSetNodesinBPProcessVisitor new.
	visitor element: aBPProcess.
	self fillElementsIn: aBPProcess from: document visitor: visitor.
	aBPProcess nsNameSpaces: document nameSpaces."
]

{ #category : #accessing }
BPEL20ProcessImpl >> activitie [
	^ activitie
]

{ #category : #accessing }
BPEL20ProcessImpl >> activitie: anObject [
	activitie  := anObject
]

{ #category : #accessing }
BPEL20ProcessImpl >> activities: anObject [
	activities := anObject
]

{ #category : #accessing }
BPEL20ProcessImpl >> bpRelations [
	^ bpRelations
]

{ #category : #accessing }
BPEL20ProcessImpl >> bpRelations: anObject [
	bpRelations := anObject
]

{ #category : #accessing }
BPEL20ProcessImpl >> bpRelationsProcessInstrumented [
	^ bpRelationsProcessInstrumented
]

{ #category : #accessing }
BPEL20ProcessImpl >> bpRelationsProcessInstrumented: anObject [
	bpRelationsProcessInstrumented := anObject
]

{ #category : #accessing }
BPEL20ProcessImpl >> faultHandlers [
	^ faultHandlers
]

{ #category : #accessing }
BPEL20ProcessImpl >> faultHandlers: anObject [
	faultHandlers := anObject
]

{ #category : #accessing }
BPEL20ProcessImpl >> fileName [
	^ fileName
]

{ #category : #accessing }
BPEL20ProcessImpl >> fileName: anObject [
	fileName := anObject
]

{ #category : #accessing }
BPEL20ProcessImpl >> fullPath [
	^ fullPath
]

{ #category : #accessing }
BPEL20ProcessImpl >> fullPath: anObject [
	fullPath := anObject
]

{ #category : #accessing }
BPEL20ProcessImpl >> nsNameSpaces [
	^ nsNameSpaces
]

{ #category : #accessing }
BPEL20ProcessImpl >> nsNameSpaces: anObject [
	nsNameSpaces := anObject
]

{ #category : #metrics }
BPEL20ProcessImpl >> numberOfActivities [
^ 0
]

{ #category : #metrics }
BPEL20ProcessImpl >> numberOfInvokes [
	^ 0
]

{ #category : #metrics }
BPEL20ProcessImpl >> numberOfVariables [
	^ 0
]

{ #category : #find }
BPEL20ProcessImpl >> partnerLinkAt: anName [
	^ partnerLinks partnerLinkAt: anName
]

{ #category : #accessing }
BPEL20ProcessImpl >> partnerLinks [
	^ partnerLinks
]

{ #category : #accessing }
BPEL20ProcessImpl >> partnerLinks: anObject [
	partnerLinks := anObject
]

{ #category : #accessing }
BPEL20ProcessImpl >> processName [
	processName ifNil: [ processName := self aName ].
	^ processName
]

{ #category : #'as yet unclassified' }
BPEL20ProcessImpl >> processName: vName [
	self aName: vName
]

{ #category : #find }
BPEL20ProcessImpl >> variableAt: aVariableName [
	[ ^ variables lstVariables at: aVariableName ]
		on: Error
		do: [ ^ A4BPEmptyObj instance ]
]

{ #category : #accessing }
BPEL20ProcessImpl >> variables [
	^ variables
]

{ #category : #accessing }
BPEL20ProcessImpl >> variables: anObject [
	variables := anObject
]
