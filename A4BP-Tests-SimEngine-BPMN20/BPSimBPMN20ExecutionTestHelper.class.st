"
A BPSimBPMN20ExecutionTestHelper is xxxxxxxxx.

Instance Variables
	count:		<Object>

count
	- xxxxx

"
Class {
	#name : #BPSimBPMN20ExecutionTestHelper,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #'A4BP-Tests-SimEngine-BPMN20'
}

{ #category : #'as yet unclassified' }
BPSimBPMN20ExecutionTestHelper >> accept: visitor [
	count := count + 1.
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExecutionTestHelper >> count [
	^ count 
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExecutionTestHelper >> count: a [
	count := a
]

{ #category : #'as yet unclassified' }
BPSimBPMN20ExecutionTestHelper >> initialize [
	super initialize.
	count := 0.
]
