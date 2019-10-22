"
BaseElement is the abstract super class for most BPMN elements. It provides the attributes id and documentation, which other elements will inherit.
"
Class {
	#name : #BPMN20BaseElementImpl,
	#superclass : #BPMN20Object,
	#instVars : [
		'extensionDefinitions',
		'extensionValues',
		'anyAttribute',
		'documentation',
		'shape',
		'myLane'
	],
	#classVars : [
		'ID_EDEFAULT'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20BaseElementImpl class >> annotation [
<MSEClass: #BPMN20BaseElementImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #adding }
BPMN20BaseElementImpl >> addExtensionsValues: values [
	extensionValues := values
]

{ #category : #builder }
BPMN20BaseElementImpl >> buildInternalRelations [
	super buildInternalRelations.
	self childrens do: [ :node | node buildInternalRelations ].
]

{ #category : #getset }
BPMN20BaseElementImpl >> extensionDefinitions [
^ extensionDefinitions
]

{ #category : #getset }
BPMN20BaseElementImpl >> extensionDefinitions: aextensionDefinitions [
^ extensionDefinitions := aextensionDefinitions
]

{ #category : #getset }
BPMN20BaseElementImpl >> extensionValues [
^ extensionValues
]

{ #category : #getset }
BPMN20BaseElementImpl >> extensionValues: aextensionValues [
^ extensionValues := aextensionValues
]

{ #category : #builder }
BPMN20BaseElementImpl >> findElementById: aId [
	^ self myRoot findElementById: aId
]

{ #category : #builder }
BPMN20BaseElementImpl >> findElementByName: anName [
	^ self myRoot findElementByName: anName
]

{ #category : #initialization }
BPMN20BaseElementImpl >> initialize [
	super initialize.

]

{ #category : #questions }
BPMN20BaseElementImpl >> isActivity [
	^ false
]

{ #category : #questions }
BPMN20BaseElementImpl >> isControlFlow [
	^ false
]

{ #category : #questions }
BPMN20BaseElementImpl >> isGateway [
	^ false
]

{ #category : #key }
BPMN20BaseElementImpl >> key [
	(self id = nil or: self = '')
		ifTrue: [ id := UUID new asString ].
	^ id
]

{ #category : #getset }
BPMN20BaseElementImpl >> linkOut [
	^ nil
]

{ #category : #metrics }
BPMN20BaseElementImpl >> metricCFC [
	| cfc |
	cfc := BPMN20MetricCFC new.
	^ cfc calculeCFC: self
]

{ #category : #metrics }
BPMN20BaseElementImpl >> metricCFCAbs [
	| cfc |
	cfc := BPMN20MetricAbsCFC new.
	^ cfc calculeCFC: self
]

{ #category : #metrics }
BPMN20BaseElementImpl >> metricNOA [
	^ 0
]

{ #category : #accessing }
BPMN20BaseElementImpl >> myLane [
	^ myLane
]

{ #category : #accessing }
BPMN20BaseElementImpl >> myLane: anObject [
	myLane := anObject
]

{ #category : #getset }
BPMN20BaseElementImpl >> myProcess [
	myProcess ifNil: [ myProcess := parent myProcess ].
	^ myProcess
]

{ #category : #getset }
BPMN20BaseElementImpl >> myRoot [
	myRoot ifNil: [ parent ifNotNil: [ myRoot := parent myRoot ] ].
	^ myRoot
]

{ #category : #getset }
BPMN20BaseElementImpl >> myRoot: amyRoot [
	^ myRoot := amyRoot
]

{ #category : #getset }
BPMN20BaseElementImpl >> shape [
	^ shape
]

{ #category : #getset }
BPMN20BaseElementImpl >> shape: anShape [
	^ shape := anShape
]
