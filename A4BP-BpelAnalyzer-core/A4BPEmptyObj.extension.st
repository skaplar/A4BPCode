Extension { #name : #A4BPEmptyObj }

{ #category : #'*A4BP-BpelAnalyzer-core-parser-builder' }
A4BPEmptyObj >> buildRelationsBpPartnerLink: aRelBpPlnk [
	^ nil
]

{ #category : #'*A4BP-BpelAnalyzer-core-parser-builder' }
A4BPEmptyObj >> buildRelationsBpProcess: aRelBpProcess [
		^ nil
]

{ #category : #'*A4BP-BpelAnalyzer-core-parser-builder' }
A4BPEmptyObj >> buildRelationsBpWsdls: aBPWSDL [
		^ nil
]

{ #category : #'*A4BP-BpelAnalyzer-core-parser-builder' }
A4BPEmptyObj >> buildRelationsBpXSDSchema: aBPXSDSchema [
		^ nil
]

{ #category : #'*A4BP-BpelAnalyzer-core-model' }
A4BPEmptyObj >> callRelations [
	^ OrderedCollection new
]
