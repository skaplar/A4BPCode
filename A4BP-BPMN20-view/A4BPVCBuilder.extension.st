Extension { #name : #A4BPVCBuilder }

{ #category : #'*A4BP-BPMN20-view-Visualization' }
A4BPVCBuilder >> visitBPMN20Object: aModel [
	| vis builder|
	vis := OrderedCollection new.
	builder := BPMN20VCBuilder new.
	vis addAll: (aModel accept: builder).
	BPMN20VCBuilder subclasses do: [ :c |
		vis addAll: (aModel accept: (c new))
		 ].
	^ vis
]
