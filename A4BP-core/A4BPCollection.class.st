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
	#name : #A4BPCollection,
	#superclass : #A4BPAbstractCollection,
	#category : #'A4BP-core-model-collections'
}

{ #category : #accessing }
A4BPCollection >> addAll: anCollection [
	^ collection addAll: anCollection
]

{ #category : #accessing }
A4BPCollection >> at: key put: aPath [
	^ collection add: aPath
]

{ #category : #accessing }
A4BPCollection >> collection [
	collection ifNil:[ collection := OrderedCollection new].
	^ collection 
]

{ #category : #accessing }
A4BPCollection >> first [
	^ collection first
]

{ #category : #accessing }
A4BPCollection >> initialize [
	super initialize.
	collection := OrderedCollection new.
]

{ #category : #accessing }
A4BPCollection >> values [
	^ collection
]
