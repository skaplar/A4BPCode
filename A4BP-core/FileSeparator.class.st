Class {
	#name : #FileSeparator,
	#superclass : #Object,
	#classInstVars : [
		'separator',
		'cseparator'
	],
	#category : #'A4BP-core-files'
}

{ #category : #'as yet unclassified' }
FileSeparator class >> cseparator [
	cseparator ifNil:[ 
		(((Smalltalk os isMacOS) or:(Smalltalk os isMacOSX))or:(Smalltalk os isUnix))
		ifTrue:[
			cseparator := $/.
			].
		(Smalltalk os isWindows)
		ifTrue:[
			cseparator := $\.
			].
	].
	
	^ cseparator
]

{ #category : #'as yet unclassified' }
FileSeparator class >> separator [
	separator ifNil:[ 
		(((Smalltalk os isMacOS) or:(Smalltalk os isMacOSX))or:(Smalltalk os isUnix))
		ifTrue:[
			separator := '/'.
			cseparator := $/.
			].
		(Smalltalk os isWindows)
		ifTrue:[
			separator := '\'.
			cseparator := $\.
			].
	].
	
	^ separator
]
