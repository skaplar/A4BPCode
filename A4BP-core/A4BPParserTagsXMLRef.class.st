Class {
	#name : #A4BPParserTagsXMLRef,
	#superclass : #Object,
	#classInstVars : [
		'tags'
	],
	#category : #'A4BP-core-parser'
}

{ #category : #'as yet unclassified' }
A4BPParserTagsXMLRef class >> annotation [
<abstract>
<MSEClass: #A4BPParserTagsXMLRef  super: #Object >
<package: #'A4BP-core' >
]

{ #category : #'as yet unclassified' }
A4BPParserTagsXMLRef class >> atrName [
	'name'
]

{ #category : #getset }
A4BPParserTagsXMLRef class >> copyList: lstItems with: v [
	"second model option bpmn:<tag>"
	lstItems copy do:[ :i |
		lstItems add: (A4BPParserRefTagClass getRefOnTag: ( v, i tag) objClass: (i objclass) ). 
	].
	
	^ lstItems
]

{ #category : #factory }
A4BPParserTagsXMLRef class >> fillItems: items tag: tag class: objClass [
	| ref |
	ref := A4BPParserRefTagClass getRefOnTag: tag objClass: objClass.
	items at: ref key put: ref.
]

{ #category : #factory }
A4BPParserTagsXMLRef class >> fillTags [
	tags addAll: self lstOfRefTagClass.
	^ tags
]

{ #category : #factory }
A4BPParserTagsXMLRef class >> getClassBPBaseOnTypeName: aTypeName [
	[ ^ self lstOfBPTagClass at: aTypeName ]
		on: KeyNotFound
		do: [ ^ self lstOfBPTagClass at: A4BPUnParserObj name ]
]

{ #category : #factory }
A4BPParserTagsXMLRef class >> getRef: aModel [
	^ aModel accept: self
]

{ #category : #factory }
A4BPParserTagsXMLRef class >> lstOfBPTagClass [
	tags ifNil: [ tags := Dictionary new ].
	tags size > 0
		ifTrue: [ ^ tags ].
	self setEmptyObj: tags.
	self setUnParseObj: tags.
	self fillTags.
	^ tags
]

{ #category : #'as yet unclassified' }
A4BPParserTagsXMLRef class >> lstOfRefTagClass [
	^ Dictionary new
]

{ #category : #resetting }
A4BPParserTagsXMLRef class >> reset [
	"self reset"
	tags := nil.
	^ 'OK'
]

{ #category : #factory }
A4BPParserTagsXMLRef class >> setEmptyObj: items [
	items add: (A4BPParserRefTagClass getRefOnTag: A4BPEmptyObj name asString objClass: A4BPEmptyObj).
	^ items
]

{ #category : #factory }
A4BPParserTagsXMLRef class >> setUnParseObj: items [
	items add: (A4BPParserRefTagClass getRefOnTag: A4BPUnParserObj name asString objClass: A4BPUnParserObj).
	^ items
]
