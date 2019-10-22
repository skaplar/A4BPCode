Extension { #name : #A4BPUnParserObj }

{ #category : #'*A4BP-BpelAnalyzer-core-model' }
A4BPUnParserObj >> bpProcess: aModel [
	self halt.
]

{ #category : #'*A4BP-BpelAnalyzer-core-parser-builder' }
A4BPUnParserObj >> buildRelationsBpPartnerLink: aRelBpPlnk [
]

{ #category : #'*A4BP-BpelAnalyzer-core-parser-builder' }
A4BPUnParserObj >> buildRelationsBpProcess: aRelBpProcess [
	
]

{ #category : #'*A4BP-BpelAnalyzer-core-parser-builder' }
A4BPUnParserObj >> buildRelationsBpWsdls: aBPWSDL [
	
]

{ #category : #'*A4BP-BpelAnalyzer-core-parser-builder' }
A4BPUnParserObj >> buildRelationsBpXSDSchema: aBPXSDSchema [
	
]

{ #category : #'*A4BP-BpelAnalyzer-core-model' }
A4BPUnParserObj >> callRelations [
	^ OrderedCollection new
]
