Extension { #name : #A4BPSOAContext }

{ #category : #'*A4BP-BpelAnalyzer-core-model' }
A4BPSOAContext >> lstBPEL [
	^ lstElements select: [ :e | e class = BPProcess ]
]
