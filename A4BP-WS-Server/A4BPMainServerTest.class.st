Class {
	#name : #A4BPMainServerTest,
	#superclass : #TestCase,
	#instVars : [
		'client'
	],
	#category : #'A4BP-WS-Server-Test'
}

{ #category : #setup }
A4BPMainServerTest >> setUp [
	A4BPMainServer start.
	client := ZnClient new
	url: 'http://localhost:', A4BPMainServer instance port asString;
	accept: ZnMimeType applicationJson;
	yourself.
]

{ #category : #setup }
A4BPMainServerTest >> tearDown [
	A4BPMainServer stop.
	
]

{ #category : #'test-get' }
A4BPMainServerTest >> testgetBPProcessContextList [
	| res v|
	res := client
		get: '/ctx';
		response.
	v := res contents trim.
	self assert: v equals: '"a4bp"'
]

{ #category : #'test-get' }
A4BPMainServerTest >> testgetSimple [
	| res v|
	res := client
		get: '/';
		response.
	v := res contents trim.
	self assert: v equals: '"a4bp"'
]
