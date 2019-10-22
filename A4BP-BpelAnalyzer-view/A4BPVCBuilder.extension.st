Extension { #name : #A4BPVCBuilder }

{ #category : #'*A4BP-BpelAnalyzer-view-Visualization' }
A4BPVCBuilder >> visitBPProcess: aModel [
	| visualizations builder|
	visualizations := OrderedCollection new.
	builder := BPBPELVCBuilder new.
	visualizations addAll: (aModel accept: builder).
	^ visualizations
]

{ #category : #'*A4BP-BpelAnalyzer-view-Visualization' }
A4BPVCBuilder >> visitBPScope: aBPScope [
	| visualizations |
	visualizations := OrderedCollection new.
	self setVisualizationForAllModel: visualizations inModel: aBPScope.
	^ visualizations
]

{ #category : #'*A4BP-BpelAnalyzer-view-Visualization' }
A4BPVCBuilder >> visitSOAContext: aModel [
	^ self visitA4BPSOAContext: aModel
]
