Class {
	#name : #A4BPDBMongo,
	#superclass : #A4BPDBAbstract,
	#category : #'A4BP-DB'
}

{ #category : #'as yet unclassified' }
A4BPDBMongo class >> annotation [
<MSEClass: #A4BPDBMongo  super: #A4BPDBAbstract >
<package: #'A4BP-DB' >
]

{ #category : #'as yet unclassified' }
A4BPDBMongo >> save: aModel [
	aModel save
]
