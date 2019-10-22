Class {
	#name : #BPEL20BranchesImpl,
	#superclass : #BPEL20ExpressionImpl,
	#instVars : [
		'countCompletedBranchesOnlyESet',
		'COUNT_COMPLETED_BRANCHES_ONLY_EDEFAULT',
		'countCompletedBranchesOnly'
	],
	#category : #'A4BP-BPEL20-core-model'
}

{ #category : #'as yet unclassified' }
BPEL20BranchesImpl class >> annotation [
<MSEClass: #BPEL20BranchesImpl  super: #BPEL20ExpressionImpl >
<package: #'A4BP-BPEL20-core' >
]

{ #category : #'as yet unclassified' }
BPEL20BranchesImpl >> COUNT_COMPLETED_BRANCHES_ONLY_EDEFAULT [
^ COUNT_COMPLETED_BRANCHES_ONLY_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20BranchesImpl >> COUNT_COMPLETED_BRANCHES_ONLY_EDEFAULT: aCOUNT_COMPLETED_BRANCHES_ONLY_EDEFAULT [
^ COUNT_COMPLETED_BRANCHES_ONLY_EDEFAULT := aCOUNT_COMPLETED_BRANCHES_ONLY_EDEFAULT
]

{ #category : #'as yet unclassified' }
BPEL20BranchesImpl >> countCompletedBranchesOnly [
^ countCompletedBranchesOnly
]

{ #category : #'as yet unclassified' }
BPEL20BranchesImpl >> countCompletedBranchesOnly: acountCompletedBranchesOnly [
^ countCompletedBranchesOnly := acountCompletedBranchesOnly
]

{ #category : #'as yet unclassified' }
BPEL20BranchesImpl >> countCompletedBranchesOnlyESet [
^ countCompletedBranchesOnlyESet
]

{ #category : #'as yet unclassified' }
BPEL20BranchesImpl >> countCompletedBranchesOnlyESet: acountCompletedBranchesOnlyESet [
^ countCompletedBranchesOnlyESet := acountCompletedBranchesOnlyESet
]
