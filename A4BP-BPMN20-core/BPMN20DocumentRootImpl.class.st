Class {
	#name : #BPMN20DocumentRootImpl,
	#superclass : #BPMN20Object,
	#instVars : [
		'mixed',
		'xMLNSPrefixMap',
		'xSISchemaLocation'
	],
	#category : #'A4BP-BPMN20-core-model'
}

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl class >> annotation [
<MSEClass: #BPMN20DocumentRootImpl  super: #BPMN20Object >
<package: #'A4BP-BPMN20-core' >
]

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl >> accept: aVisitor [
	^ aVisitor visitBPMN20DocumentRootImpl: self
]

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl >> mixed [
^ mixed
]

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl >> mixed: amixed [
^ mixed := amixed
]

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl >> myDocument [
	^ myDocument
]

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl >> myDocument: amyDocument [
	^ myDocument := amyDocument
]

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl >> parent [
	^ parent
]

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl >> parent: aparent [
	^ parent := aparent
]

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl >> state [
	^ state
]

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl >> state: astate [
	^ state := astate
]

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl >> text [
	^ text
]

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl >> text: atext [
	^ text := atext
]

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl >> xMLNSPrefixMap [
^ xMLNSPrefixMap
]

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl >> xMLNSPrefixMap: axMLNSPrefixMap [
^ xMLNSPrefixMap := axMLNSPrefixMap
]

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl >> xSISchemaLocation [
^ xSISchemaLocation
]

{ #category : #'as yet unclassified' }
BPMN20DocumentRootImpl >> xSISchemaLocation: axSISchemaLocation [
^ xSISchemaLocation := axSISchemaLocation
]
