Trait {
	#name : #TA4BPRelations,
	#category : #'A4BP-BPEL20-core-Trait'
}

{ #category : #'as yet unclassified' }
TA4BPRelations >> addRelation: aRelation [
	self lstRelations at: (aRelation aName) put: aRelation
]

{ #category : #'as yet unclassified' }
TA4BPRelations >> getRelationAt: aRelation [
	^ self getRelationAtName: aRelation aName
]

{ #category : #'as yet unclassified' }
TA4BPRelations >> getRelationAtName: pName [
	| rel |
	[ rel := self lstRelations at: pName ]
		on: KeyNotFound
		do: [ ^ A4BPEmptyObj instance ].
	^ rel
]

{ #category : #'as yet unclassified' }
TA4BPRelations >> iHaveRelationWith: aRelation [
	^ (self getRelationAt: aRelation ) = aRelation.
]
