"
Please comment me using the following template inspired by Class Responsibility Collaborator (CRC) design:

For the Class part:  State the name of the class with one line description: For example, I'm xxx the root of the hierarchy of visitor objects.

For the Responsibility part: Three sentences about my main responsibility, what I'm doing, what services do I offer.

For the Collaborators Part: State my main collaborators and one line about how I interact with them. 

Public API and Key Messages

- message one   
- message two 
- what is the way to create instances is a plus.

   One simple example is simply gorgeous.
 
Internal Representation and Key Implementation Points.


    Implementation Points
"
Class {
	#name : #A4BPDictionary,
	#superclass : #A4BPAbstractCollection,
	#category : #'A4BP-core-model-collections'
}

{ #category : #adding }
A4BPDictionary >> at: anKey [
	^ collection at: anKey
]

{ #category : #'as yet unclassified' }
A4BPDictionary >> at: index ifAbsent: aBlock [
	^ collection at: index ifAbsent: aBlock
]

{ #category : #adding }
A4BPDictionary >> at: index put: value [ 
	^ collection at: index put: value
]

{ #category : #'as yet unclassified' }
A4BPDictionary >> collection [
	collection ifNil:[ collection := Dictionary new].
	^ collection
]

{ #category : #accessing }
A4BPDictionary >> dictionary [
	^ collection
]

{ #category : #accessing }
A4BPDictionary >> dictionary: anObject [
	collection := anObject
]

{ #category : #adding }
A4BPDictionary >> elementAt: key [
	^ collection elementAt: key
]

{ #category : #adding }
A4BPDictionary >> initialize [
	super initialize.
	collection := Dictionary new.
]

{ #category : #adding }
A4BPDictionary >> remove: aObj [
	collection removeKey: aObj key ifAbsent: [].
]

{ #category : #'as yet unclassified' }
A4BPDictionary >> removeKey: key ifAbsent: aBlock [
	^ collection removeKey: key ifAbsent: aBlock
]
