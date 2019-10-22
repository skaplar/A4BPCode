Class {
	#name : #A4BPUIGLMBuilder,
	#superclass : #Object,
	#instVars : [
		'mainBrowser'
	],
	#category : #'A4BP-View-UI'
}

{ #category : #'as yet unclassified' }
A4BPUIGLMBuilder class >> buildBrowserIn: constructor [
	^ self new buildBrowserIn: constructor
]

{ #category : #'as yet unclassified' }
A4BPUIGLMBuilder >> buildBrowserIn: constructor [
	^ constructor
]
