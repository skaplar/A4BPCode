Class {
	#name : #A4BPAbstractParser,
	#superclass : #Object,
	#instVars : [
		'lstElements'
	],
	#category : #'A4BP-core-parser'
}

{ #category : #parser }
A4BPAbstractParser class >> fromXMLDescription: xmlDescription [ 
	^ self new
]

{ #category : #parser }
A4BPAbstractParser class >> parseString: string [
	^ self new parseString: string
]

{ #category : #definition }
A4BPAbstractParser class >> xsd [
	^ ''
]

{ #category : #definition }
A4BPAbstractParser class >> xsdStream [
	^ ReadStream on: self xsd
]

{ #category : #adding }
A4BPAbstractParser >> addElement: aElement [
	lstElements add: aElement
]

{ #category : #add }
A4BPAbstractParser >> addInContext: context [
	context addAllElements: self elements.
]

{ #category : #getset }
A4BPAbstractParser >> elements [
	^ self lstElements
]

{ #category : #getset }
A4BPAbstractParser >> filePrefix [
	^ OrderedCollection new.
]

{ #category : #abstract }
A4BPAbstractParser >> getBaseElement [
	^ A4BPEmptyObj 
]

{ #category : #getset }
A4BPAbstractParser >> getDocumentBaseOnStream: aStream [
	"return the object to be parser"
	| document |
	document := A4BPFactoryXMLParser parser parse: aStream.
	^ document
]

{ #category : #abstract }
A4BPAbstractParser >> getTagRef [
	^ A4BPParserTagsXMLRef
]

{ #category : #initialization }
A4BPAbstractParser >> initialize [
	super initialize.
	lstElements := OrderedCollection new
]

{ #category : #getset }
A4BPAbstractParser >> lstElements [
	^ lstElements
]

{ #category : #parser }
A4BPAbstractParser >> manageError: e inFile: aFile [ 
	|element|
	A4BPLog f: 'Error Parsing file' , aFile fullPath asString , 'ERROR:' , e asString.
	element := A4BPUnParserObj new.
	element fileName: aFile fullPath basename.
	element tagName: element fileName.
	element fullPath: aFile fullName.
	element error: e.
	self addElement: element.

]

{ #category : #metric }
A4BPAbstractParser >> numberOfElements [
	^ self lstElements size.
]

{ #category : #parser }
A4BPAbstractParser >> parseFile: aFile [
	"base on stream object the stream create BPObjets to represent the xml in memory"
	
	[ ^ self parseFileWithError: aFile ]
		on: Error
		do: [ :e |  
			self manageError: e inFile: aFile ]
	
	"^ self parseFileWithError: aFile "
]

{ #category : #parser }
A4BPAbstractParser >> parseFileWithError: aFile [
	"base on stream object the stream create BPObjets to represent the xml in memory"
	"('PRGestionBOBTTR.bpmn' = aFile fullPath basename) ifTrue:[self halt]."
	aFile
		readStreamDo: [ :stream | 
			| document |
			"Start creating a XMLDOM Object from stream"
			document := self getDocumentBaseOnStream: stream.
			document nodes
				do: [ :docAtr | 
					| bpElement refTag |
					refTag := self getTagRef getClassBPBaseOnTypeName: docAtr localName.
					bpElement := refTag objclass fromXMLDescription: docAtr.
					bpElement fileName: aFile fullPath basename.
					bpElement fullPath: aFile fullName.
					bpElement buildInternalRelations.
					A4BPLog f: ' new element was create,name:' , bpElement fileName.
					self addElement: bpElement ] ]
]

{ #category : #parser }
A4BPAbstractParser >> parseStream: stream [
	"base on stream object the stream create BPObjets to represent the xml in memory"
	| document |
	"Start creating a XMLDOM Object from stream"
	"document := (XMLDOMParser on: stream) parseDocument."
	document := self getDocumentBaseOnStream: stream.
	document nodes do: [ :docAtr | 
			| bpElement refTag localName|
			localName := docAtr localName.
			refTag := self getTagRef getClassBPBaseOnTypeName: localName.
			bpElement := refTag objclass fromXMLDescription: docAtr.
			bpElement buildInternalRelations.
			self addElement: bpElement ]
]

{ #category : #parser }
A4BPAbstractParser >> parseString: string [
	^ self parseStream:  (ReadStream on: string)
]
