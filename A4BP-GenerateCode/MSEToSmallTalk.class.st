Class {
	#name : #MSEToSmallTalk,
	#superclass : #Object,
	#category : #'A4BP-GenerateCode-Examples'
}

{ #category : #mseTOst }
MSEToSmallTalk class >> createContainer: c [
	c ifNil: [ ^ '' ].
	^ (self createContainer: c parentScope) , '-', c name
]

{ #category : #mse }
MSEToSmallTalk class >> gen [
	"self gen"

	| repository metaMse tower generator |
	repository := LIBRoot mainLibrary model importString: MSEToSmallTalk mse.
	metaMse := repository metamodel exportString.
	tower := FMTower new.
	tower metamodel importString: metaMse.
	generator := FMDefaultCodeGenerator new.
	generator visit: tower metamodel.
	generator previewChanges
]

{ #category : #codeGenerator }
MSEToSmallTalk class >> genVisitorExample [

BPSimObject allSubclassesDo: [ :c|
	|cname|
	 cname := 'BPSimParser', c name asString ,'Visitor'.
	BPSimParserAbstractVisitor subclass: cname
	instanceVariableNames: ''
	classVariableNames: ''
	category: 'A4BP-SimEngine-core-parser-builder-visitors'
	].

BPSimObject allSubclassesDo: [ :c|
	|cname mname class|
	cname := 'BPSimParser', c name asString ,'Visitor'.
	mname := 'visit', c name.
	class := (BPSimParserAbstractVisitor allSubclasses select:[ :vc| vc name = cname]) first.
	[class compiledMethodAt: mname asSymbol ]
	on: Error do:[
		class compile:'',mname,': aElement
	^ self visitBPSimObject: aElement'.
		].
	].
]

{ #category : #codeGenerator }
MSEToSmallTalk class >> getBuild: aClass [
	aClass allInstVarNamesEverywhere do:[ :v | 
	|s|
	s:= v asString.
	"compile the get method"
	aClass compile:'',
	s,'
	^ ',s.].
]

{ #category : #codeGenerator }
MSEToSmallTalk class >> getsetBuild: aClass [
	self getBuild: aClass.
	self setBuild: aClass.
]

{ #category : #mse }
MSEToSmallTalk class >> mse [
	^ '(
   (LIB.Library
       (librarian
           (LIB.Person
               (name ''The librarian'')))
       (books
           (LIB.Book
               (title ''Deep into Pharo'')
               (authors (ref: 1) (ref: 2) (ref: 3) (ref: 4)))
           (LIB.Book
               (title ''Pharo by Example'')
               (authors (ref: 5) (ref: 3) (ref: 6) (ref: 7)))
   (LIB.Person (id: 1)
       (name ''Alexandre Bergel''))
   (LIB.Person (id: 2)
       (name ''Damien Cassou''))
   (LIB.Person(id: 3)
       (name ''Stephane Ducasse''))
   (LIB.Person(id: 4)
       (name ''Jannik Laval''))
   (LIB.Person(id: 5)
       (name ''Andrew Black''))
   (LIB.Person(id: 6)
       (name ''Oscar Nierstrasz''))
   (LIB.Person(id: 7)
       (name ''Damien Pollet'')))))'
]

{ #category : #codeGenerator }
MSEToSmallTalk class >> setBuild: aClass [
	aClass allInstVarNamesEverywhere do:[ :v | 
	|s|
	s:= v asString.
	"compile the set method"
	aClass compile:'',
	s,': ','a',s,'
	^ ',s,' := a',s.].
]

{ #category : #codeGenerator }
MSEToSmallTalk class >> testComplexGeneration [
	"self run: #testComplexGeneration"
	| tower generator |
	tower := FMTower new.
	tower metamodel importString: FMMSEParserTest famix30mse.

	"We generate Smalltalk classes from the classes contained in the repository"
	generator := FMDefaultCodeGenerator new.
	generator visit: tower metamodel.
	generator model changes changesSize should > 0.
	generator previewChangesIfShiftPressed
]

{ #category : #codeGenerator }
MSEToSmallTalk class >> testGenBPMN20seInA4BP02 [
	"self testGenBPMN20seInA4BP02"
	| generator repository |
	'E:\eclipse.bpmn2.mse' asFileReference readStreamDo:[ :aStream |
		repository := MooseModel importFrom: aStream.
		].
	"We generate Smalltalk classes from the classes contained in the repository"
	generator := FMDefaultCodeGenerator new.
	generator classNamePrefix: 'A4BP02'.
	generator defaultCategory: 'A4BP02'.
	generator visit: repository elements.
	generator previewChanges
]

{ #category : #codeGenerator }
MSEToSmallTalk class >> testGenBpelmseInA4BP01 [
	"self testGenBpelmseInA4BP01"
	| tower generator|
	tower := FMTower new.
	'E:\bpel.mse' asFileReference readStreamDo:[:stream |  
			tower metamodel importStream: stream.
		].
	"We generate Smalltalk classes from the classes contained in the repository"
	generator := FMDefaultCodeGenerator new.
	generator classNamePrefix: 'A4BP01'.
	generator visit: tower metamodel.
	generator model changes changesSize should > 0.
	generator previewChangesIfShiftPressed
]

{ #category : #mseTOst }
MSEToSmallTalk class >> toSmallTalk: aFamixTypeGroup prefix: aPrefix category: aCategory [

"step 1 for each famixclass create a class in smalltalk"
aFamixTypeGroup do: [ :fc | (Array with: fc with: fc superclass) do:[ :famixClass |
			| newName variables container|
			famixClass ifNotNil:[
			newName := ( aPrefix, famixClass name) asSymbol.
			variables := (famixClass attributes collect: #name) inject: '' into: [:s :v | s , ' ', v ].
			container := self createContainer: famixClass container.
			[ Object subclass: newName instanceVariableNames: variables classVariableNames: '' category: ( aCategory,container)] on: Exception do:[].
			]
		]].
		
"step 2 for each famixclass find the class and superclass create in the step 1 and change the superclass in smalltalk"
aFamixTypeGroup do: [ :famixClass | 
	| superclassName className|	
		famixClass superclass ifNotNil:[
	superclassName := (aPrefix , famixClass superclass name) asSymbol.
	className := (aPrefix , famixClass name) asSymbol.
	[(Smalltalk at: className) superclass: (Smalltalk at:  superclassName)] on: Exception do:[].
	]].
	

]
