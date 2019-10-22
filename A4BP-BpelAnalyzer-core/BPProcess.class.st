"
A BPProcess is center of the analisis, the bpelProcess
contain the bussines logic and all the conection and relation
to execute a set of step in a orchestation BUS.

Instance Variables
	activities:		<Object>
	lstRelInvokes:		<Object>
	lstRelRecives:		<Object>
	lstRelations:		<Object>
	partnerLinks:		<Object>
	processName:		<Object>
	variables:		<Object>

activities
	- xxxxx

lstRelInvokes
	- xxxxx

lstRelRecives
	- xxxxx

lstRelations
	- xxxxx

partnerLinks
	- xxxxx

processName
	- xxxxx

variables
	- xxxxx

"
Class {
	#name : #BPProcess,
	#superclass : #BPBPELObject,
	#traits : 'TBPRelations + TBPActivityMetric',
	#classTraits : 'TBPRelations classTrait + TBPActivityMetric classTrait',
	#instVars : [
		'processName',
		'activities',
		'variables',
		'partnerLinks',
		'faultHandlers',
		'fileName',
		'fullPath',
		'bpRelations',
		'nsNameSpaces',
		'bpRelationsProcessInstrumented'
	],
	#category : #'A4BP-BpelAnalyzer-core-model-bpel'
}

{ #category : #parser }
BPProcess class >> annotation [
<MSEClass: #BPProcess  super: #BPBPELObject >
<package: #'A4BP-BpelAnalyzer-core' >
]

{ #category : #parser }
BPProcess class >> fillElementsIn: aBPProcess from: document [
	| visitor |
	visitor := BPBuilderSetNodesinBPProcessVisitor new.
	visitor element: aBPProcess.
	self fillElementsIn: aBPProcess from: document visitor: visitor.
	aBPProcess nsNameSpaces: document nameSpaces.
]

{ #category : #parser }
BPProcess class >> fromXMLDescription: document [
	"The argument is a complete description of an XML process"

	| bpProcess |
	"is an instante of on BProcess"
	bpProcess := self new.
	self fillBData: document in: bpProcess.
	bpProcess processName: bpProcess aName.
	self fillElementsIn: bpProcess from: document. 
	^ bpProcess
]

{ #category : #questions }
BPProcess >> + number [
 ^ self calculateCFC + number .
]

{ #category : #questions }
BPProcess >> - number [
 ^ self calculateCFC - number .
]

{ #category : #questions }
BPProcess >> < number [
 ^ self calculateCFC < number .
]

{ #category : #questions }
BPProcess >> > number [
 ^ self calculateCFC > number .
]

{ #category : #'as yet unclassified' }
BPProcess >> aName [
	aName size > 0 ifTrue:[ ^ aName ].
	^ self fileName
]

{ #category : #visitor }
BPProcess >> accept: aVisitor [
	^ aVisitor visitBPProcess: self
]

{ #category : #getset }
BPProcess >> activities [
	"show only activities on top view"
	^ activities
]

{ #category : #questions }
BPProcess >> adaptToInteger: rcvr andCompare: selector [
	selector = #<
		ifTrue: [ ^ self < rcvr ].
	selector = #>
		ifTrue: [ ^ self > rcvr ].
	^ self integer 
]

{ #category : #questions }
BPProcess >> adaptToInteger: rcvr andSend: selector [
	selector = #+
		ifTrue: [ ^ self + rcvr ].
	selector = #-
		ifTrue: [ ^ self - rcvr ].
	^ self integer
]

{ #category : #adding }
BPProcess >> addActivity: anActivity [
	activities add: anActivity
]

{ #category : #'build-relations' }
BPProcess >> addBpProcessRelation: aRelBpProcess baseOfRel: baseRel [
	( bpRelations lstRelations select: [ :rel | rel = baseRel ])
		do: [ :rel | 
			self addRelation: aRelBpProcess.
			aRelBpProcess addRelation: self ].
]

{ #category : #adding }
BPProcess >> addFaultHandler: aHandler [
	faultHandlers := aHandler
]

{ #category : #adding }
BPProcess >> addInstrumentedProcess: aRelation [
	bpRelationsProcessInstrumented addRelation:aRelation.
]

{ #category : #adding }
BPProcess >> addPartnerLink: aPartnerLink [
	partnerLinks addPartnerLink: aPartnerLink.
	aPartnerLink bpProcess: self
]

{ #category : #adding }
BPProcess >> addRelation: aRelation [
	bpRelations addRelation:aRelation.
]

{ #category : #adding }
BPProcess >> addVariable: aVariable [
	variables addVariable: aVariable
]

{ #category : #all }
BPProcess >> allActivities [
	^ self lstAllActivities .
]

{ #category : #all }
BPProcess >> allInvokes [
	| visitor |
	visitor := BPMetricBPInvokeActivities new.
	visitor calculateActivitiesFrom: activities.
	^ visitor lstActivities
]

{ #category : #all }
BPProcess >> allInvokesProcess [
	| lstBPProcess |
	lstBPProcess := OrderedCollection new.
	self allInvokes
		do: [ :aBPInvoke | 
			"lstBPProcess addAll: (aBPInvoke link allRelations select: [ :r | r class = BPProcess ])"
			lstBPProcess addAll: (aBPInvoke processInvoke)
		].
	^ lstBPProcess
]

{ #category : #all }
BPProcess >> allOnMessage [
	| visitor |
	visitor := BPCollectorBPOnMessageVisitor new.
	visitor calculateLstFrom: activities.
	^ visitor lstBPObj
]

{ #category : #all }
BPProcess >> allPartnerLinks [
	^ self partnerLinks lstPartnerLinks.
]

{ #category : #all }
BPProcess >> allProcessInvoke [
	| lstBPProcess |
	lstBPProcess := OrderedCollection new.
	self allInvokes
		do: [ :aBPInvoke | 
			lstBPProcess addAll: (aBPInvoke link allRelations select: [ :r | r class = BPProcess ]) 
		].
	^ lstBPProcess
]

{ #category : #all }
BPProcess >> allRecives [
	| visitor |
	visitor := BPMetricBPReceivesActivities new.
	visitor calculateActivitiesFrom: activities.
	^ visitor lstActivities
]

{ #category : #all }
BPProcess >> allRelations [
	^ bpRelations allRelations 
]

{ #category : #all }
BPProcess >> allScopes [
	| visitor |
	visitor := BPMetricBPScopeActivities new.
	visitor calculateActivitiesFrom: activities.
	^ visitor lstActivities
]

{ #category : #all }
BPProcess >> allVariables [
	^ self lstVariables.
]

{ #category : #all }
BPProcess >> allWSDLs [
	|lst|
	lst := self allPartnerLinks collect:[ :plk |  plk bpwsdl]. 
	^ lst
]

{ #category : #resolving }
BPProcess >> bindVariablesAndInvokes [
	activities do: [ :act | act bindWith: self ] 
]

{ #category : #'build-relations' }
BPProcess >> buildRelations: aRelation [
	aRelation buildRelationsBpProcess: self
]

{ #category : #'build-relations' }
BPProcess >> buildRelationsBpPartnerLink: aRelBpPlnk [
]

{ #category : #'build-relations' }
BPProcess >> buildRelationsBpProcess: aRelBpProcess [
	|relWithProcess|
	self == aRelBpProcess
		ifTrue: [ ^ self ].	
	"find in my relations if some one have a relation with the supose aRelBpProcess"
	relWithProcess := bpRelations lstRelations select: [ :rel | 
		rel iHaveRelationWith: aRelBpProcess ].
	relWithProcess
		do: [ :rel | 
			self addBpProcessRelation: aRelBpProcess baseOfRel:rel]
]

{ #category : #'build-relations' }
BPProcess >> buildRelationsBpWsdls: aBPWSDL [
	partnerLinks buildRelationsBpWsdls: aBPWSDL.
	variables buildRelationsBpWsdls: aBPWSDL
]

{ #category : #'build-relations' }
BPProcess >> buildRelationsBpXSDSchema: aBPXSDSchema [
	| size |
	size := (nsNameSpaces select: [ :ns | ns = aBPXSDSchema targetNamespace ]) size.
	size > 0 ifTrue:[ bpRelations addRelation: aBPXSDSchema].
]

{ #category : #getset }
BPProcess >> elements [
	^  self childrens
]

{ #category : #getset }
BPProcess >> fileName [
	^ fileName
]

{ #category : #getset }
BPProcess >> fileName: aFileName [
	fileName := aFileName
]

{ #category : #'build-relations' }
BPProcess >> findDefBPVariableType: aDef [
	| ns |
	"find the namespace of the definition"
	ns := nsNameSpaces at: aDef prefix.
	aDef nameSpace: ns.
	^ bpRelations findDef: aDef
]

{ #category : #getset }
BPProcess >> fullPath [
	^ fullPath
]

{ #category : #getset }
BPProcess >> fullPath: aFullPath [
	fullPath := aFullPath
]

{ #category : #getset }
BPProcess >> getBPPartnerLinkName: aPlnkName [
	^ self partnerLinkAt: aPlnkName .
]

{ #category : #getset }
BPProcess >> getBPVariableNamed: aVariableName [
	^ self variableAt: aVariableName
]

{ #category : #getset }
BPProcess >> getChildrenNodes [
	| nodes |
	nodes := OrderedCollection new.
	nodes addAll: self lstActivities.
	nodes add: variables.
	nodes add: partnerLinks.
	nodes add: faultHandlers.
	nodes add: bpRelations.
	nodes add: bpRelationsProcessInstrumented.
	^ nodes
]

{ #category : #getset }
BPProcess >> getPartnerLinkName: aPlnkName [
	^ partnerLinks detect: [ :v | v name = aPlnkName ].
]

{ #category : #getset }
BPProcess >> getRelationAt: aRelation [
	^ self getRelationAtName: aRelation aName
]

{ #category : #getset }
BPProcess >> getRelationAtName: pName [
	^ bpRelations getRelationAtName: pName
]

{ #category : #questions }
BPProcess >> iHaveRelationWith: aRelation [
	^ (self getRelationAt: aRelation ) = aRelation.
]

{ #category : #initialization }
BPProcess >> initialize [
	super initialize.
	processName := 'Unnamed'.
	aName := processName.
	activities := OrderedCollection new.
	variables := BPVariables new.
	partnerLinks := BPPartnerLinks new.	
	"lstRelations := IdentityDictionary new."
	faultHandlers := BPFaultHandlers new.
	bpRelations := BPRelationsElementsInBPObject new.
	bpRelationsProcessInstrumented := BPRelationsElementsInBPObject new.
	bpRelationsProcessInstrumented aName: A4BPUII18n msg msgInstrumentations.
	nsNameSpaces := Dictionary new.
	fileName := ''.
	myProcess := self.
	self parent: self
]

{ #category : #questions }
BPProcess >> integer [
 ^ 1
]

{ #category : #getset }
BPProcess >> isAProcess [
	^ true
]

{ #category : #questions }
BPProcess >> isProcess [
	^ true
]

{ #category : #getset }
BPProcess >> label [
	^ aName , '>' , self fileName
]

{ #category : #dsl }
BPProcess >> lanes [
	^ Array with:self.
]

{ #category : #getset }
BPProcess >> lstActivities [
	"show only activities on top view"
	^ activities
]

{ #category : #getset }
BPProcess >> lstAllActivities [
"show all activities include into child activities elements"
	| visitor |
	visitor := BPMetricAllActivities new.
	visitor calculateActivitiesFrom: activities.
	^ visitor lstActivities
]

{ #category : #getset }
BPProcess >> lstAllActivitiesWithDeep:aDeepLevel [
"show all activities include into child activities elements"
	| visitor |
	visitor := BPMetricAllActivitiesWithDeepLevel new.
	visitor calculateActivitiesFrom: activities withDeep: aDeepLevel .
	^ visitor lstActivities
]

{ #category : #getset }
BPProcess >> lstFaultHandlers [
	^ faultHandlers lstFaultHandlers
]

{ #category : #getset }
BPProcess >> lstPartnerLinks [
	^ partnerLinks lstPartnerLinks
]

{ #category : #getset }
BPProcess >> lstRelations [
	^ bpRelations lstRelations 
]

{ #category : #getset }
BPProcess >> lstVariables [
	^ variables lstVariables 
]

{ #category : #dsl }
BPProcess >> messageFlows [
	^ OrderedCollection new.
]

{ #category : #'metrics-complexity' }
BPProcess >> metricCFC [
	"
	[
		Jorge Cardoso* ,†
		Department of Mathematics and Engineering, University of Madeira,
		9050-390 Funchal, Portugal tugal
	]
	"

	"
	this is the old version without visitor pattern
	|metric|
	metric:=0.
	self lstActivities do:[ :act | metric:= metric + act calculateCFC].
	^ metric."

	| metric visitor |
	metric := 0.
	visitor := BPMetricCFC new.
	metric := self accept: visitor.
	^ metric
]

{ #category : #getset }
BPProcess >> nsNameSpaces [
	^ nsNameSpaces
]

{ #category : #getset }
BPProcess >> nsNameSpaces: aDictionary [
	nsNameSpaces := aDictionary
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActAssing [
	^ self numberOfActByClass: BPAssign
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActByClass: aClass [
	| lst |
	lst := self lstAllActivities select: [ :act | act class == aClass ].
	^ lst size
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActEmpty [
	^ self numberOfActByClass: BPEmpty
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActFlow [
	^ self numberOfActByClass: BPFlow
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActForEach [
	^ self numberOfActByClass: BPForEach
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActIf [
	^ self numberOfActByClass: BPIf
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActInvoke [
	^ self numberOfActByClass: BPInvoke
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActPick [
	^ self numberOfActByClass: BPPick
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActReceive [
	^ self numberOfActByClass: BPReceive
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActReply [
	^ self numberOfActByClass: BPReply
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActRethrow [
	^ self numberOfActByClass: BPRethrow
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActScope [
	^ self numberOfActByClass: BPScope
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActSecuence [
	^ self numberOfActByClass: BPSequence
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActThrow [
	^ self numberOfActByClass: BPThrow
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActValidate [
	^ self numberOfActByClass: BPValidate
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActWait [
	^ self numberOfActByClass: BPWait
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActWhile [
	^ self numberOfActByClass: BPWhile
]

{ #category : #'metrics-BPActivity' }
BPProcess >> numberOfActivities [
	^ self lstAllActivities size
]

{ #category : #metrics }
BPProcess >> numberOfAllCatchAll [
	|number|
	number:= faultHandlers numberOfCatchAll.
	self allScopes do:[:act | number:= number + act faultHandlers numberOfCatchAll].
	^ number.
]

{ #category : #metrics }
BPProcess >> numberOfAllCatchs [
	|number|
	number:= faultHandlers numberOfCatchs.
	self allScopes do:[:act | number:= number + act faultHandlers numberOfCatchs].
	^ number.
]

{ #category : #metrics }
BPProcess >> numberOfCatchAll [
	^ faultHandlers numberOfCatchAll
]

{ #category : #metrics }
BPProcess >> numberOfCatchs [
	^ faultHandlers numberOfCatchs
]

{ #category : #metrics }
BPProcess >> numberOfInvokes [
	^ self allInvokes size.
]

{ #category : #metrics }
BPProcess >> numberOfInvokesByVariable: variable [
	|count|
	count:=0.
	self allInvokes do:[:each | (each iHaveThisVariable: variable) ifTrue:[count+1]].
]

{ #category : #'metrics-size' }
BPProcess >> numberOfNOA [
"
Name:Number of Activities (NOA).
Description: BPEL has eight basic activities and nine container activities in total.
How to Calculate: count the number of basic and container activities in the  process.
"
	^ self numberOfActivities.
]

{ #category : #'metrics-size' }
BPProcess >> numberOfNOAC [
	"
Name: Number of activities and control-flow elements (NOAC) 
Description: There are four control flow elements; sequencing,  branching, iteration, and concurrent execution. 
How to Calculate: number of activities and control-flow elements in a process.
"

	^ self numberOfActivities
]

{ #category : #'metrics-size' }
BPProcess >> numberOfNOAJS [
"
Name: Number of activities.
Description: joints and splits of a process (NOAJS) BPEL has XOR-joins and splits, OR-joins and splits and AND-joints and splits.
How to Calculate: count the number of activities,  joints and splits.
"
	^ self numberOfActivities.
]

{ #category : #metrics }
BPProcess >> numberOfOnMessage [
	^ self allOnMessage size.
]

{ #category : #metrics }
BPProcess >> numberOfPartnerLinks [
	^ partnerLinks numberOfPartnerLinks.
]

{ #category : #metrics }
BPProcess >> numberOfRecives [
	^ self allRecives size.
]

{ #category : #metrics }
BPProcess >> numberOfRelations [
	^ bpRelations  numberOfRelations
]

{ #category : #metrics }
BPProcess >> numberOfVariables [
	^ variables numberOfVariables
]

{ #category : #dsl }
BPProcess >> outFlows [
	^ self allInvokesProcess
]

{ #category : #getset }
BPProcess >> parent: aParent [
	parent := aParent
]

{ #category : #getset }
BPProcess >> partnerLinkAt: aPlnkName [
	^ partnerLinks partnerLinkAt: aPlnkName .
]

{ #category : #getset }
BPProcess >> partnerLinks [
	^ partnerLinks
]

{ #category : #getset }
BPProcess >> partnerLinks: ppartnerLinks [
	partnerLinks := ppartnerLinks.
	ppartnerLinks bpProcess: self
]

{ #category : #getset }
BPProcess >> processName [
	"Return the name of the process, return a string"
	^ processName
]

{ #category : #getset }
BPProcess >> processName: aString [
	processName := aString.
	aName :=aString
]

{ #category : #'external-operation' }
BPProcess >> saveInDisk [
	"Save the process in the external file"

	self fullPath
		ifNotNil: [ 
			| aStream xmlWriter |
			xmlWriter := XMLWriter new.
			aStream := FileStream oldFileNamed: self fullPath.
			myDocument writeOn: xmlWriter.
			xmlWriter printOn: aStream.
			aStream close ]
]

{ #category : #dsl }
BPProcess >> shape [
 ^ nil
]

{ #category : #getset }
BPProcess >> variableAt: aVariableName [
	[ ^ variables lstVariables at: aVariableName ]
		on: KeyNotFound
		do: [ ^ A4BPEmptyObj instance ]
]

{ #category : #getset }
BPProcess >> variables [
	^ variables
]

{ #category : #getset }
BPProcess >> variables: aBPVariables [
	variables := aBPVariables
]

{ #category : #getset }
BPProcess >> verticalLineLayout [
	^ lstRelations.
]
