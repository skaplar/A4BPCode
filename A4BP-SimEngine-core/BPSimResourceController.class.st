Class {
	#name : #BPSimResourceController,
	#superclass : #Object,
	#instVars : [
		'resourceDispachers'
	],
	#category : #'A4BP-SimEngine-core-execution-resource'
}

{ #category : #'as yet unclassified' }
BPSimResourceController >> doActivity: inputP inTime: clock [
	|quantity rols resourceInTime|
	quantity := inputP resourceParameter quantity vv.
	rols := inputP resourceParameter role.
	"the most comun is resive one role"
	rols do:[ :rol |
		|id rd|
		"capture the value of the parameter"
		id := rol vv.
		"find the resource dispacher for the rol"
		rd := resourceDispachers at: id ifAbsent:[
			|nrd|
			nrd := BPSimResourceDispacher new
				resource:id.
			].
		" ask for the next available time for the resource"
		resourceInTime := rd nextFreeTime: clock using: quantity inModel: inputP elementRef
		].
	^ resourceInTime
	

]

{ #category : #initialization }
BPSimResourceController >> initialize [
	super initialize.
	resourceDispachers := A4BPDictionary new.	

]

{ #category : #'as yet unclassified' }
BPSimResourceController >> nextFreeTime: clock fromParameter: inputP [
	|quantity rols resourceInTime|
	quantity := inputP resourceParameter quantity vv.
	rols := inputP resourceParameter role.
	"the most comun is resive one role"
	rols do:[ :rol |
		|id rd|
		"capture the value of the parameter"
		id := rol vv.
		"find the resource dispacher for the rol"
		rd := resourceDispachers at: id ifAbsent:[
			|nrd|
			nrd := BPSimResourceDispacher new
				resource:id.
			].
		" ask for the next available time for the resource"
		resourceInTime := rd nextFreeTime: clock using: quantity inModel: inputP elementRef
		].
	^ resourceInTime
	

]
