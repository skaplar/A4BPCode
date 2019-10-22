"
A BPMN20RefToBeBuild is helper class use to add reference during parsing xml process to know who is the object ""ObjWhitMatch"" to add the reference during the build relations process.

Instance Variables
	objWhitMatch:		<Any kind of object to add the reference during the build relations process>
	refId:		<Is the id to localize the object in the metamodel list>

objWhitMatch
	- xxxxx

refId
	- xxxxx

"
Class {
	#name : #BPMN20RefToBeBuild,
	#superclass : #BPMN20BaseElementImpl,
	#instVars : [
		'refId',
		'objWhitMatch',
		'key'
	],
	#category : #'A4BP-BPMN20-core-model-a4bp'
}

{ #category : #annotation }
BPMN20RefToBeBuild class >> annotation [
<MSEClass: #BPMN20RefToBeBuild  super: #BPMN20BaseElementImpl >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #parser }
BPMN20RefToBeBuild class >> fillElementsIn: aModel from: document [
	|visitor|
	visitor := self getVisitor.
	visitor element: aModel.
	aModel refId: (self readContentString: document).
	^ aModel 
]

{ #category : #parser }
BPMN20RefToBeBuild class >> getVisitor [
	^ BPMN20ParserSetinBPMN20RefToBeBuildImplVisitor new
]

{ #category : #visitor }
BPMN20RefToBeBuild >> accept: aVisitor [
	^ aVisitor visitBPMN20RefToBeBuild: self
]

{ #category : #add }
BPMN20RefToBeBuild >> addMatch: e [
	"for basic the object with match is a dictionary"
	objWhitMatch at: e key put: e
]

{ #category : #initialization }
BPMN20RefToBeBuild >> initialize [
	super initialize.
	key := UUID new asString.
	
]

{ #category : #getset }
BPMN20RefToBeBuild >> key [
	^ key
]

{ #category : #getset }
BPMN20RefToBeBuild >> objWhitMatch [
^ objWhitMatch
]

{ #category : #getset }
BPMN20RefToBeBuild >> objWhitMatch: aobjWhitMatch [
^ objWhitMatch := aobjWhitMatch
]

{ #category : #getset }
BPMN20RefToBeBuild >> refId [
^ refId
]

{ #category : #getset }
BPMN20RefToBeBuild >> refId: arefId [
^ refId := arefId
]
