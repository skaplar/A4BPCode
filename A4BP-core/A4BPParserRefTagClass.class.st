Class {
	#name : #A4BPParserRefTagClass,
	#superclass : #Object,
	#instVars : [
		'tag',
		'objclass'
	],
	#category : #'A4BP-core-parser'
}

{ #category : #getset }
A4BPParserRefTagClass class >> getRefOnTag: tag objClass: objclass [
 	| instance |
	instance:= self new.
	instance tag:tag.
	instance objclass:objclass.
^ instance 
]

{ #category : #'as yet unclassified' }
A4BPParserRefTagClass >> isEmptyObj [
	^ self objclass = A4BPEmptyObj.
]

{ #category : #'as yet unclassified' }
A4BPParserRefTagClass >> isUnParser [
	^ self objclass = A4BPUnParserObj.
]

{ #category : #'as yet unclassified' }
A4BPParserRefTagClass >> key [
 ^ tag
]

{ #category : #'as yet unclassified' }
A4BPParserRefTagClass >> objclass [
^ objclass
]

{ #category : #'as yet unclassified' }
A4BPParserRefTagClass >> objclass: aobjclass [
	objclass := aobjclass
]

{ #category : #'as yet unclassified' }
A4BPParserRefTagClass >> tag [
 ^ tag
]

{ #category : #'as yet unclassified' }
A4BPParserRefTagClass >> tag:atag [
 tag:=atag.
]
