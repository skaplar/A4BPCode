Extension { #name : #A4BPSOAContext }

{ #category : #'*A4BP-BPMN20-core-model' }
A4BPSOAContext >> lstBPMN20 [
	^ lstElements select: [ :e | e class = BPMN20DefinitionsImpl ]
]
