Class {
	#name : #BPSimOperationsActions,
	#superclass : #Object,
	#category : #'A4BP-SimEngine-core-execution'
}

{ #category : #'as yet unclassified' }
BPSimOperationsActions >> proportionateSelection: array [
	|sumP indexP targetValue check|
	targetValue := nil.
	check := 0.
	array do:[:p | check := check + (p at:2)].
	
	check < 100 ifTrue:[ 
		|elements|
		elements := 	array collect:[:p | (p at:1)].
		^ self proportionateSelectionEqual: elements
	].
	
	[
		sumP := 0.
		indexP := 100 random.
		targetValue := array select:[:p | 
		"2 parameter is the probability value"
		sumP:= sumP + (p at:2).
		sumP > indexP 
		].
		targetValue:= targetValue first.
		"1 parameter is the elementRef"
		targetValue := targetValue at:1.
	] on:Error do:[
	"dont flow for any node"
		targetValue := nil.
	].
	^ targetValue
]

{ #category : #'as yet unclassified' }
BPSimOperationsActions >> proportionateSelectionEqual: elements [
	| noElements lstPValues spv sum |
	noElements := elements size.
	spv := 100 // noElements.
	sum := 0.
	lstPValues := elements
		collect: [ :p | 
			| pv |
			pv := spv.
			sum := sum + pv.
			sum + pv > 100
				ifTrue: [ pv := pv - (sum - 100) ].
			Array with: p with: pv ].
	^ self proportionateSelection: lstPValues
]
