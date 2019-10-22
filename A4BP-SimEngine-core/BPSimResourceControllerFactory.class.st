Class {
	#name : #BPSimResourceControllerFactory,
	#superclass : #Object,
	#category : #'A4BP-SimEngine-core-execution-resource'
}

{ #category : #'as yet unclassified' }
BPSimResourceControllerFactory class >> resourceController [
	^ BPSimResourceControllerJbpm new.
]
