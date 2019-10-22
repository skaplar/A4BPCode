Class {
	#name : #A4BPUIGLM,
	#superclass : #Object,
	#instVars : [
		'browser',
		'nodeOrganizer'
	],
	#category : #'A4BP-View-UI'
}

{ #category : #open }
A4BPUIGLM class >> open: model [
	^ self new open: model
]

{ #category : #'as yet unclassified' }
A4BPUIGLM >> buildBrowser [
	browser := GLMTabulator new.
	^ browser
]

{ #category : #'as yet unclassified' }
A4BPUIGLM >> open: model [
	nodeOrganizer := model.
	self buildBrowser.
	(browser openOn: self organizer) maximize
]

{ #category : #'as yet unclassified' }
A4BPUIGLM >> organizer [
	^ nodeOrganizer
]
