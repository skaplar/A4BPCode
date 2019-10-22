Class {
	#name : #BPMN20DefinitionsImpl,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'targetNamespace',
		'imports',
		'extensions',
		'relationships',
		'diagrams',
		'rootElements',
		'exporterVersion',
		'typeLanguage',
		'exporter',
		'expressionLanguage',
		'name',
		'fileRevision',
		'version',
		'fileName',
		'fullPath',
		'elementsDictionary'
	],
	#classVars : [
		'EXPORTER_EDEFAULT',
		'EXPORTER_VERSION_EDEFAULT',
		'EXPRESSION_LANGUAGE_EDEFAULT',
		'NAME_EDEFAULT',
		'TARGET_NAMESPACE_EDEFAULT',
		'TYPE_LANGUAGE_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20DefinitionsImpl class >> annotation [
<MSEClass: #BPMN20DefinitionsImpl  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20DefinitionsImpl class >> fillElementsIn: aModel from: document [
	| visitor |
	visitor := BPMN20ParserSetinBPMN20DefinitionsImplVisitor new.
	visitor element: aModel.	"start set model default information"
	aModel version: (self readString: document at: 'version').
	aModel fileRevision: (self readString: document at: 'fileRevision').
	aModel myRoot: aModel.
	self fillElementsIn: aModel from: document visitor: visitor
]

{ #category : #parser }
BPMN20DefinitionsImpl class >> fromXMLDescription: document in: parent [
	^ self fromXMLDescriptionNoInProcess: document in: parent
]

{ #category : #getset }
BPMN20DefinitionsImpl >> aName [
	aName = ''
		ifTrue: [ ^ fileName ].
	^ aName
]

{ #category : #visitor }
BPMN20DefinitionsImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DefinitionsImpl: self
]

{ #category : #getset }
BPMN20DefinitionsImpl >> activities [
	^ self allActivities  
]

{ #category : #add }
BPMN20DefinitionsImpl >> addElementInDictionary: aModel [
	"add in dictionary elements to help in the finder elements process"
	elementsDictionary at: aModel key put: aModel
]

{ #category : #add }
BPMN20DefinitionsImpl >> addImport: aElement [
	imports at: aElement.
]

{ #category : #add }
BPMN20DefinitionsImpl >> addRootElement: aElement [
	self rootElements at: aElement key put: aElement.
	self childrens add: aElement.
]

{ #category : #all }
BPMN20DefinitionsImpl >> allActivities [
	| lst |
	lst := OrderedCollection new.
	self process do: [ :p | p activities values do: [ :a | lst add: a ] ].
	^ lst
]

{ #category : #all }
BPMN20DefinitionsImpl >> allVariables [
	^ OrderedCollection new
]

{ #category : #getset }
BPMN20DefinitionsImpl >> anyAttribute [
	^ anyAttribute
]

{ #category : #getset }
BPMN20DefinitionsImpl >> anyAttribute: aanyAttribute [
	^ anyAttribute := aanyAttribute
]

{ #category : #builder }
BPMN20DefinitionsImpl >> buildRelations: lstOfRel [
]

{ #category : #builder }
BPMN20DefinitionsImpl >> buildRelationsBpProcess: aprocess [
]

{ #category : #builder }
BPMN20DefinitionsImpl >> buildRelationsBpWsdls: awsdl [
]

{ #category : #builder }
BPMN20DefinitionsImpl >> buildRelationsBpXSDSchema: axsd [
]

{ #category : #dsl }
BPMN20DefinitionsImpl >> collaborations [
	^ rootElements select:[ :e | e class = BPMN20CollaborationImpl].
]

{ #category : #getset }
BPMN20DefinitionsImpl >> diagrams [
^ diagrams
]

{ #category : #getset }
BPMN20DefinitionsImpl >> diagrams: adiagrams [
^ diagrams := adiagrams
]

{ #category : #getset }
BPMN20DefinitionsImpl >> documentation [
	^ documentation
]

{ #category : #getset }
BPMN20DefinitionsImpl >> documentation: adocumentation [
	^ documentation := adocumentation
]

{ #category : #add }
BPMN20DefinitionsImpl >> elementAt: anid [
	"add in dictionary elements to help in the finder elements process"

	^ elementsDictionary at: anid
]

{ #category : #getset }
BPMN20DefinitionsImpl >> elementsDictionary [
^ elementsDictionary
]

{ #category : #getset }
BPMN20DefinitionsImpl >> elementsDictionary: aelementsDictionary [
^ elementsDictionary := aelementsDictionary
]

{ #category : #getset }
BPMN20DefinitionsImpl >> exporter [
^ exporter
]

{ #category : #getset }
BPMN20DefinitionsImpl >> exporter: aexporter [
^ exporter := aexporter
]

{ #category : #getset }
BPMN20DefinitionsImpl >> exporterVersion [
^ exporterVersion
]

{ #category : #getset }
BPMN20DefinitionsImpl >> exporterVersion: aexporterVersion [
^ exporterVersion := aexporterVersion
]

{ #category : #getset }
BPMN20DefinitionsImpl >> expressionLanguage [
^ expressionLanguage
]

{ #category : #getset }
BPMN20DefinitionsImpl >> expressionLanguage: aexpressionLanguage [
^ expressionLanguage := aexpressionLanguage
]

{ #category : #getset }
BPMN20DefinitionsImpl >> extensionDefinitions [
	^ extensionDefinitions
]

{ #category : #getset }
BPMN20DefinitionsImpl >> extensionDefinitions: aextensionDefinitions [
	^ extensionDefinitions := aextensionDefinitions
]

{ #category : #getset }
BPMN20DefinitionsImpl >> extensionValues [
	^ extensionValues
]

{ #category : #getset }
BPMN20DefinitionsImpl >> extensionValues: aextensionValues [
	^ extensionValues := aextensionValues
]

{ #category : #getset }
BPMN20DefinitionsImpl >> extensions [
^ extensions
]

{ #category : #getset }
BPMN20DefinitionsImpl >> extensions: aextensions [
^ extensions := aextensions
]

{ #category : #getset }
BPMN20DefinitionsImpl >> fileName [
^ fileName
]

{ #category : #getset }
BPMN20DefinitionsImpl >> fileName: afileName [
^ fileName := afileName
]

{ #category : #getset }
BPMN20DefinitionsImpl >> fileRevision [
^ fileRevision
]

{ #category : #getset }
BPMN20DefinitionsImpl >> fileRevision: afileRevision [
^ fileRevision := afileRevision
]

{ #category : #finder }
BPMN20DefinitionsImpl >> findElementById: aId [
	[ ^ elementsDictionary at: aId ]
		on: Error
		do: [ ^ A4BPEmptyObj instance ]
]

{ #category : #finder }
BPMN20DefinitionsImpl >> findElementByName: anName [
	"use select because the dictionary the key is the id no the name"

	[ 
	| el |
	el := (elementsDictionary values select: [ :e | e aName = anName ]) first.
	^ el ]
		on: Error
		do: [ :e | 
			^ A4BPEmptyObj instance ]
]

{ #category : #dsl }
BPMN20DefinitionsImpl >> flowAllElements [
	|lst|
	lst := OrderedCollection new.
	self process do:[:p| lst addAll: p value flowElements].
	^ lst
]

{ #category : #dsl }
BPMN20DefinitionsImpl >> flowElements [
	^ self flowAllElements select:[:n | n isSequence not].
]

{ #category : #getset }
BPMN20DefinitionsImpl >> fullPath [
^ fullPath
]

{ #category : #getset }
BPMN20DefinitionsImpl >> fullPath: afullPath [
^ fullPath := afullPath
]

{ #category : #getset }
BPMN20DefinitionsImpl >> imports [
^ imports
]

{ #category : #getset }
BPMN20DefinitionsImpl >> imports: aimports [
^ imports := aimports
]

{ #category : #initialization }
BPMN20DefinitionsImpl >> initialize [
	super initialize.
	rootElements := A4BPDictionary new.
	imports := A4BPDictionary new.
	elementsDictionary := A4BPDictionary new.
	diagrams := A4BPDictionary new.
	version := ''.
	fileRevision := ''.
	fileName := ''
]

{ #category : #quetions }
BPMN20DefinitionsImpl >> isProcess [
	^ true
]

{ #category : #dsl }
BPMN20DefinitionsImpl >> lanes [
	|lst|
	lst := OrderedCollection new.
	self process do:[:p| lst addAll: p value lanes].
	^ lst
]

{ #category : #quetions }
BPMN20DefinitionsImpl >> max: aValue [
	^ self
]

{ #category : #dsl }
BPMN20DefinitionsImpl >> messageFlows [
	| lst |
	lst := OrderedCollection new.
	self collaborations do: [ :c | lst addAll: c value messageFlows ].
	^ lst
]

{ #category : #metrics }
BPMN20DefinitionsImpl >> metricCFCRel [
	| number process |
	number := 0.
	process := childrens values select: [ :m | m class = BPMN20ProcessImpl ].
	process do: [ :p | number := number + p metricCFCRel ].
	^ number
]

{ #category : #metrics }
BPMN20DefinitionsImpl >> metricIC [
	| number|
	number := 0.
	"IC = length * ( number of inputs * numbers of outputs) ^ 2 "
	^ number
]

{ #category : #metrics }
BPMN20DefinitionsImpl >> metricNOA [
	^ self numberOfActivities.
]

{ #category : #metrics }
BPMN20DefinitionsImpl >> metricNOAC [
	^ self numberOfActivities + self numberOfGateways
]

{ #category : #metrics }
BPMN20DefinitionsImpl >> metricProcessDifficulty [
	"Process Difificulty
	 D = ( n1 / 2 ) * ( N2 / n2) 
	Where:
	n1 is the number of unique activities, splits and joins and control-flow elements of business process
	n2 is the number of unique data variables manipulated by the process and its activities
	N1 is the total number of elements
	N2 is the total number of data occurrences"
	| n1 n2 N1 N2 process |
	n1 := 1.
	n2 := 1.
	N1 := 1.
	N2 := 1.
	process :=  (n1 / 2 ) * ( N2 / n2 ) .
	^ process
]

{ #category : #metrics }
BPMN20DefinitionsImpl >> metricProcessLength [
	"Process Length
	N = n1 * log2 (n1) + n2 * log2 ( n2
	Where:
	n1 is the number of unique activities, splits and joins and control-flow elements of business process
	n2 is the number of unique data variables manipulated by the process and its activities
	N1 is the total number of elements
	N2 is the total number of data occurrences"
	| n1 n2 N1 N2 process |
	n1 := 0.
	n2 := 0.
	N1 := 0.
	N2 := 0.
	process := 0.
	^0
]

{ #category : #metrics }
BPMN20DefinitionsImpl >> metricProcessVolume [
	"Process Volume
	V = ( N1 + N2 ) * log2 ( n1 + n2 )
	Where:
	n1 is the number of unique activities, splits and joins and control-flow elements of business process
	n2 is the number of unique data variables manipulated by the process and its activities
	N1 is the total number of elements
	N2 is the total number of data occurrences"
	| n1 n2 N1 N2 process |
	n1 := 0.
	n2 := 0.
	N1 := 0.
	N2 := 0.
	process := 0.
	^0
]

{ #category : #quetions }
BPMN20DefinitionsImpl >> min: aValue [
 ^ self
]

{ #category : #getset }
BPMN20DefinitionsImpl >> myDocument [
	^ myDocument
]

{ #category : #getset }
BPMN20DefinitionsImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #metrics }
BPMN20DefinitionsImpl >> numberOfActivities [
	| number process |
	number := 0.
	process := childrens values select: [ :m | m class = BPMN20ProcessImpl ].
	process do: [ :p | number := number + p numberOfActivities ].
	^ number
]

{ #category : #metrics }
BPMN20DefinitionsImpl >> numberOfGateways [
	| number process |
	number := 0.
	process := childrens values select: [ :m | m class = BPMN20ProcessImpl ].
	process do: [ :p | number := number + p numberOfGateways ].
	^ number
]

{ #category : #dsl }
BPMN20DefinitionsImpl >> process [
	^ rootElements select:[ :e | e class = BPMN20ProcessImpl].
]

{ #category : #getset }
BPMN20DefinitionsImpl >> relationships [
^ relationships
]

{ #category : #getset }
BPMN20DefinitionsImpl >> relationships: arelationships [
^ relationships := arelationships
]

{ #category : #getset }
BPMN20DefinitionsImpl >> rootElements [
^ rootElements
]

{ #category : #getset }
BPMN20DefinitionsImpl >> rootElements: arootElements [
^ rootElements := arootElements
]

{ #category : #finder }
BPMN20DefinitionsImpl >> startEvent [
	|lst|
	lst := self flowElements select: [ :e | e class = BPMN20StartEventImpl ].
	lst size > 0 ifTrue:[^  lst first].
	^ A4BPEmptyObj instance.
]

{ #category : #getset }
BPMN20DefinitionsImpl >> state [
	^ state
]

{ #category : #getset }
BPMN20DefinitionsImpl >> state: astate [
	^ state := astate
]

{ #category : #getset }
BPMN20DefinitionsImpl >> targetNamespace [
^ targetNamespace
]

{ #category : #getset }
BPMN20DefinitionsImpl >> targetNamespace: atargetNamespace [
^ targetNamespace := atargetNamespace
]

{ #category : #getset }
BPMN20DefinitionsImpl >> text [
	^ text
]

{ #category : #getset }
BPMN20DefinitionsImpl >> text: atext [
	^ text := atext
]

{ #category : #getset }
BPMN20DefinitionsImpl >> typeLanguage [
^ typeLanguage
]

{ #category : #getset }
BPMN20DefinitionsImpl >> typeLanguage: atypeLanguage [
^ typeLanguage := atypeLanguage
]

{ #category : #getset }
BPMN20DefinitionsImpl >> variables [
	^ self lstVariables  
]

{ #category : #getset }
BPMN20DefinitionsImpl >> version [
^ version
]

{ #category : #getset }
BPMN20DefinitionsImpl >> version: aversion [
^ version := aversion
]
