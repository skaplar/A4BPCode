Class {
	#name : #A4BPSOAContext,
	#superclass : #A4BPObject,
	#instVars : [
		'lstElements'
	],
	#category : #'A4BP-core-model'
}

{ #category : #moose }
A4BPSOAContext class >> annotation [
<MSEClass: #A4BPSOAContext  super: #A4BPObject >
<package: #'A4BP-core' >
]

{ #category : #create }
A4BPSOAContext class >> createBaseOnPath: aPath [
	| context |
	context := self new.
	context createBaseOnPath: aPath.
	"for each context like BPEL20 or BPMN20 do the same proces in the base class"
	A4BPSOAContext subclassesDo: [ :soacClass | 
			| soacInstance |
			soacInstance := soacClass new.
			soacInstance createBaseOnPath: aPath.
			context joinContext: soacInstance ].
	context buildRelations.
	^ context
]

{ #category : #visitor }
A4BPSOAContext >> accept: aVisitor [
	^ aVisitor visitA4BPSOAContext: self
]

{ #category : #add }
A4BPSOAContext >> addAllElements: lst [
	lst do: [ :p | self addElement: p ]
]

{ #category : #add }
A4BPSOAContext >> addElement: el [
	lstElements at: el id put: el.
	el parent: self
			
]

{ #category : #getset }
A4BPSOAContext >> allChildrens [
	^ self allElements 
]

{ #category : #all }
A4BPSOAContext >> allElements [
	|lst|
	lst:= OrderedCollection new.
	lstElements do:[ :e | lst addAll: e childrens]. 
	^ lst
]

{ #category : #getset }
A4BPSOAContext >> allNodes [
	|lst|
	lst:= OrderedCollection new.
	self lstElements do:[ :e | lst addAll: e allNodes]. 
	^ lst
]

{ #category : #creator }
A4BPSOAContext >> buildRelations [
	lstElements copy do: [ :e1 | lstElements do: [ :e2 | e1 buildRelations: e2 ] ].
]

{ #category : #'as yet unclassified' }
A4BPSOAContext >> childrens [
	^ childrens
]

{ #category : #'as yet unclassified' }
A4BPSOAContext >> childrens: achildrens [
	^ childrens := achildrens
]

{ #category : #creator }
A4BPSOAContext >> configName: afr [
	aName := afr basename
]

{ #category : #creator }
A4BPSOAContext >> createBaseOnPath: aString [
	"create a soa world base on path of file system"

	| afr files parsers |
	afr := aString asFileReference.
	self configName: afr.
	parsers := self getParsers.
	parsers
		do: [ :parser | 
			parser filePrefix 
			do:[ :filep | 
				
				files := afr allFiles select: [ :each | each basename endsWith: filep ].
				files 
				do: [ :file | parser parseFile: file ].
				].
			parser addInContext: self 
			].
	self buildRelations
]

{ #category : #dsl }
A4BPSOAContext >> elements [
	^ self lstElements 
]

{ #category : #getset }
A4BPSOAContext >> getChildrenNodes [
	| lst g unparsers|
	lst := OrderedCollection new.
	g := A4BPElementGroup new.
	g aName:'Process'.
	g addElements:  (self lstElements select:[ :e | e isProcess]).
	lst add: g.
	g := A4BPElementGroup new.
	g aName:'Services'.
	g addElements:  (self lstElements select:[ :e | e isWSDL]).
	lst add: g.
	g := A4BPElementGroup new.
	g aName:'Schemas'.
	g addElements:  (self lstElements select:[ :e | e isSchema]).
	lst add: g.
	
	unparsers := (self lstElements select:[ :e | e isUnparseObj]).

	unparsers size > 0 ifTrue:[	
		g := A4BPElementGroup new.
		g aName:'Unparse Elements'.
		g addElements: unparsers .
		lst add: g.
	].
	
	^ lst
]

{ #category : #getset }
A4BPSOAContext >> getElementAtName: anName [
	|lst|
	lst := (lstElements select:[:e | e aName = anName ]) values.
	lst size < 1 ifTrue:[ ^ A4BPEmptyObj instance].
	^  lst first.
]

{ #category : #creator }
A4BPSOAContext >> getParsers [
	"Throw a new collection to use in the overwrite object to list the parse objects for the Context"

	^ OrderedCollection new
]

{ #category : #getset }
A4BPSOAContext >> getProcessAtName: anName [
	|lst|
	lst := (lstElements select:[:e | e aName = anName and: e isProcess. ]) values.
	lst size < 1 ifTrue:[ ^ A4BPEmptyObj instance].
	^  lst first.

]

{ #category : #getset }
A4BPSOAContext >> getWSDLAtName: anName [
	|lst|
	lst := (lstElements select:[:e | e aName = anName and: e isWSDL. ]) values.
	lst size < 1 ifTrue:[ ^ A4BPEmptyObj instance].
	^  lst first.

]

{ #category : #initialization }
A4BPSOAContext >> initialize [
	super initialize.
	lstElements := Dictionary new.
	aName := self hash asString
]

{ #category : #creator }
A4BPSOAContext >> joinContext: aContext [
	lstElements addAll: aContext lstElements.
]

{ #category : #getset }
A4BPSOAContext >> lstElements [
	^ lstElements
]

{ #category : #'as yet unclassified' }
A4BPSOAContext >> lstElements: alstElements [
	^ lstElements := alstElements
]

{ #category : #metrics }
A4BPSOAContext >> numberOfElements [
	^ lstElements size
]

{ #category : #metrics }
A4BPSOAContext >> numberOfProcess [
  ^ (lstElements collect:[:e | e isProcess ]) size.
]

{ #category : #metrics }
A4BPSOAContext >> numberOfSchemas [
	^ self schemas size.
]

{ #category : #metrics }
A4BPSOAContext >> numberOfWSDLs [
	^ self wsdls size.
]

{ #category : #dsl }
A4BPSOAContext >> process [
	^ lstElements values select:[ :el | el isProcess].
]

{ #category : #'as yet unclassified' }
A4BPSOAContext >> schemas [
	^ (lstElements select:[:e | e isSchema ])
]

{ #category : #dsl }
A4BPSOAContext >> wsdls [
	^ (lstElements select:[:e | e isWSDL ]).
]
