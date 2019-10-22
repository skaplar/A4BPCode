"
Have similar code to produces de collection about relations between metamodels object
"
Trait {
	#name : #TBPRelations,
	#category : #'A4BP-BpelAnalyzer-core-Trait'
}

{ #category : #'as yet unclassified' }
TBPRelations >> addRelation: aRelation [
	self lstRelations at: (aRelation aName) put: aRelation
]

{ #category : #'as yet unclassified' }
TBPRelations >> getRelationAt: aRelation [
	^ self getRelationAtName: aRelation aName
]

{ #category : #'as yet unclassified' }
TBPRelations >> getRelationAtName: pName [
	| rel |
	[ rel := self lstRelations at: pName ]
		on: KeyNotFound
		do: [ ^ A4BPEmptyObj instance ].
	^ rel
]

{ #category : #'as yet unclassified' }
TBPRelations >> iHaveRelationWith: aRelation [
	^ (self getRelationAt: aRelation ) = aRelation.
]

{ #category : #'as yet unclassified' }
TBPRelations >> iHaveaRelationOf: aRelation [
	^ (self getRelationAt: aRelation ) = aRelation.
]
