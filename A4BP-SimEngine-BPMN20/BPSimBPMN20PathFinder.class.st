Class {
	#name : #BPSimBPMN20PathFinder,
	#superclass : #Object,
	#instVars : [
		'paths'
	],
	#category : #'A4BP-SimEngine-BPMN20-execution-path'
}

{ #category : #'as yet unclassified' }
BPSimBPMN20PathFinder class >> findPaths: aModel [
	|pathContainer|
	pathContainer := self new.
	pathContainer findPaths: aModel.
	^ pathContainer 
	
]

{ #category : #accessing }
BPSimBPMN20PathFinder >> addPath: aPath [
	paths at: aPath key put: aPath 
]

{ #category : #'as yet unclassified' }
BPSimBPMN20PathFinder >> findPaths: aModel [
	BPSimBPMN20PathExplorer findPaths: aModel notify: self
]

{ #category : #initialization }
BPSimBPMN20PathFinder >> initialize [
	super initialize.
	paths := A4BPCollection new.
]

{ #category : #accessing }
BPSimBPMN20PathFinder >> paths [
	^ paths
]

{ #category : #accessing }
BPSimBPMN20PathFinder >> paths: anObject [
	paths := anObject
]
